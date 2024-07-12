# Penultimate stable version of Debian
FROM debian:buster

# Update, Upgrade and Install MariaDB
RUN apt update -y && apt upgrade -y & \
    apt install -y mariadb-server 

# Change the bind-address to 0.0.0.0
RUN sed -i 's/bind-address/#bind-address/' /etc/mysql/mariadb.conf.d/50-server.cnf && \
    echo "bind-address = 0.0.0.0" >> /etc/mysql/mariadb.conf.d/50-server.cnf

# Uncomment the log_error line
RUN sed -i 's/#log_error/log_error/' /etc/mysql/mariadb.conf.d/50-server.cnf && \
    echo "log_error = /var/log/mysql/error.log" >> /etc/mysql/mariadb.conf.d/50-server.cnf

# Copy the database initialization script to the container
COPY srcs/requirements/MARIADB/tools/init_db.sh /tmp/init_db.sh

# Change the permissions of the script
RUN chmod +x /tmp/init_db.sh

# Start the MariaDB service
RUN /tmp/init_db.sh

# Exposing the port
EXPOSE 3306
   
# Start the MariaDB service
CMD ["mysqld_safe"]