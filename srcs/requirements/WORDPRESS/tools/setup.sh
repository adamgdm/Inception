# Downloading core files of WordPress
wp core download --allow-root --path='/var/www/wordpress'

# Checking if the wp-config.php file exists
if [ ! -f /var/www/wordpress/wp-config.php ]; then
    mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php
    wp core config --allow-root --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost="$MYSQL_HOST" --dbprefix="$MYSQL_PREFIX" --path='/var/www/wordpress'
fi

# Installing WordPress
wp core install --allow-root --url="$WORDPRESS_URL" --title="$WORDPRESS_TITLE" --admin_user="$WORDPRESS_USER" --admin_password="$WORDPRESS_PASSWORD" --admin_email="$WORDPRESS_EMAIL" --path='/var/www/wordpress'

# Create a new user
wp user create $USER_NAME $USER_EMAIL --role="$USER_ROLE" --user_pass="$USER_PASSWORD" --allow-root --path='/var/www/wordpress'

# Start the PHP service
service php7.4-fpm start