# Importing Latest stable version of debian

FROM debian:stable

# Installing NGINX DEPENDENCIES AND TLS 1.3

RUN apt-get update && apt-get install -y \
    nginx \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Exposing port 443

EXPOSE 443

# Copying the certificate and key to the correct locations

COPY selfsigned.crt /etc/ssl/certs/
COPY selfsigned.key /etc/ssl/private/

# Copying the configuration file

COPY nginx.conf /etc/nginx/nginx.conf

# Starting the NGINX service

CMD ["nginx", "-g", "daemon off;"]