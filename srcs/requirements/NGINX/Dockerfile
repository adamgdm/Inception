FROM debian:bullseye

# Update & Upgrade & Install Nginx & OpenSSL
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y nginx openssl

# Create SSL Dir
RUN mkdir -p /etc/nginx/ssl

# Create SSL Certificate
RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/nginx-selfsigned.key -x509 -days 365 -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=Marrakesh-Asfi/L=Benguerir/O=UM6P/OU=1337/CN=1337.ma"

# Copy the Configuration Of NGINX in the container to two directories: sites-available and sites-enabled
COPY conf/agoujdam.conf /etc/nginx/sites-available/agoujdam.conf
RUN ln -s /etc/nginx/sites-available/agoujdam.conf /etc/nginx/sites-enabled/

# Run our Container
CMD [ "nginx", "-g", "daemon off;" ]
