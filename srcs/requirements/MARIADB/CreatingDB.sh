#!/bin/bash

service mariadb start

mariadb -u root -e "CREATE DATABASE IF NOT EXISTS $MARIADB_DB;"
mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MARIADB_ROOT_PASS';"
mariadb -u root -e "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASS';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;"
mariadb -u root -e "GRANT ALL PRIVILEGES ON $MARIADB_DB.* TO '$MARIADB_USER'@'%';"
mariadb -u root -e "FLUSH PRIVILEGES;"

kill $(cat /var/run/mysqld/mysqld.pid);