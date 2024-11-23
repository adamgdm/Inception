#!/bin/bash

# Download WordPress core files
wp core download --allow-root --path=/var/www/wordpress

# Check if wp-config.php does not exist
if [ ! -f "/var/www/wordpress/wp-config.php" ]; then
    mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

    # Set database configuration in wp-config.php
    wp config set DB_HOST mariadb:3306 --allow-root --path=/var/www/wordpress
    wp config set DB_NAME $MARIADB_DB --allow-root --path=/var/www/wordpress
    wp config set DB_USER $MARIADB_USER --allow-root --path=/var/www/wordpress
    wp config set DB_PASSWORD $MARIADB_PASS --allow-root --path=/var/www/wordpress
    
fi

# Install WordPress
wp core install --url=$DOMAIN_NAME --title=$SITE_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root --path='/var/www/wordpress'

# Create an author user
wp user create --allow-root --role=author $AUTHOR_USER $AUTHOR_EMAIL --user_pass=$AUTHOR_PASS --path='/var/www/wordpress'

# Start PHP-FPM in the foreground
php-fpm7.4 -F