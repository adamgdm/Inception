FROM debian:bullseye

# Update & Upgrade & Install necessary packages
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
    wget \
    curl \
    php7.4-fpm \
    php7.4-mysql \
    mariadb-client

# Copy php configuration file and create the directories
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
RUN mkdir -p /run/php && chmod u+rwx,g+rwx,o+rx /run/php

# Download and install WordPress
RUN mkdir -p /var/www
RUN wget https://wordpress.org/latest.tar.gz -P /var/www
RUN cd /var/www && tar -xzf /var/www/latest.tar.gz && rm -rf /var/www/latest.tar.gz
RUN chown -R www-data:www-data /var/www/wordpress

# Download the WordPress CLI
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

# Copy the setup script
COPY tools/setupWP.sh /setupWP.sh
RUN chmod +x /setupWP.sh

EXPOSE 9000

ENTRYPOINT [ "bash", "/setupWP.sh" ]