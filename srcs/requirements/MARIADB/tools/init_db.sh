#!/bin/sh

# Start the MariaDB service
service mysql start

# Check if the database exists and create it if not
mariadb -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"

# Check if the user exists and create it if not, then grant privileges
mariadb -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
mariadb -u root -e "FLUSH PRIVILEGES;"

# Set the password for the root user (no check needed as root always exists)
mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"

# Grant all privileges to the root user (redundant as root already has all privileges, but included for completeness)
mariadb -u root -e "GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;"

# Flush privileges to apply the changes
mariadb -u root -e "FLUSH PRIVILEGES;"

# Stop the MariaDB service
service mysql stop