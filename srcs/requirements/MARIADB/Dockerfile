FROM debian:bullseye

# Define Arguments
ARG MARIADB_DB
ARG MARIADB_USER
ARG MARIADB_PASS
ARG MARIADB_ROOT_PASS

# Update & Upgrade & Install mariadb-server and create the directories
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y mariadb-server
RUN mkdir -p /var/lib/mysql /var/run/mysqld && chown -R mysql:mysql /var/lib/mysql /var/run/mysqld && chmod 777 /var/run/mysqld

# Copy Configuration file
COPY conf/my.cnf /etc/mysql/mariadb.conf.d/my.cnf
RUN chmod 775 /etc/mysql/mariadb.conf.d/my.cnf

# Use the script of creation
COPY CreatingDB.sh /CreatingDB.sh
RUN chmod +x CreatingDB.sh && bash /CreatingDB.sh

EXPOSE 3306

ENTRYPOINT [ "mysqld_safe" ]