# Penultimate stable version of Debian
FROM debian:buster

# Update and Install WORDPRESS AND PHP-FPM
RUN apt-get update && \
    apt-get install -y wget php7.4-fpm php7.4-mysql mariadb-client && \
    rm -rf /var/lib/apt/lists/*

# Copy the configuration file www.conf
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

# Make the directory /run/php for PHP-FPM to store its runtime information
RUN mkdir /run/php
RUN chmod a+w /run/php 

# Set Up Wordpress from the official website
RUN wget https://wordpress.org/latest.tar.gz -P /tmp && \
    tar -xvf /tmp/latest.tar.gz -C /var/www/ && \
    rm -rf /tmp/latest.tar.gz

# Get the WP-CLI
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -P /tmp && \
    chmod +x /tmp/wp-cli.phar && \
    mv /tmp/wp-cli.phar /usr/local/bin/wp

# Run the script to configure the database
COPY tools/init_db.sh /tmp/init_db.sh
RUN chmod +x /tmp/init_db.sh

# Expose the port
EXPOSE 9000

# Start the PHP-FPM service
CMD ["php-fpm7.4", "-F"]