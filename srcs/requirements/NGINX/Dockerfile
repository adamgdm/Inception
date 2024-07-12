# Penultimate stable version of Debian
FROM debian:buster

# Update and Install NGINX and TLS 1.3 dependencies
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

# Exposing the port
EXPOSE 443

# Generate a Self Signed TLS 1.3 Certificate and place it in the etc/nginx/ssl directory
RUN mkdir /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=MA/ST=Marrakesh-Asfi/L=BenGuerir/O=1337/CN=agoujdam.42.fr/UID=agoujdam"

# Copy The NGINX Configuration from the host machine to the container
COPY conf/agoujdam.conf /etc/nginx/sites-available/agoujdam.conf
RUN ln -s /etc/nginx/sites-available/agoujdam.conf /etc/nginx/sites-enabled/agoujdam.conf

# Running the Service
CMD ["nginx", "-g", "daemon off;"]