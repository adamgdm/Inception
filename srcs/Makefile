all: volumes hosts up

volumes:
    @sudo mkdir -p /home/agoujdam/data/wordpress
    @sudo mkdir -p /home/agoujdam/data/mariadb
    @sudo chmod a+rwx /home/agoujdam/data/wordpress
    @sudo chmod a+rwx /home/agoujdam/data/mariadb

hosts:
    if [ -z "$(shell grep "agoujdam.42.fr" /etc/hosts)" ]; then \
        echo "127.0.0.1	agoujdam.42.fr" | sudo tee -a /etc/hosts > /dev/null; \
    fi

up:
    @docker-compose up -d

down:
    @docker-compose down

re: down up

build:
    @docker-compose build

clean:
    @sudo rm -rf /home/agoujdam/data/wordpress
    @sudo rm -rf /home/agoujdam/data/mariadb
    @docker-compose down -v --rmi all --remove-orphans

.PHONY: all volumes hosts up down re build clean