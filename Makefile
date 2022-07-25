NAME = Inception

all:	prune start

conf: 
		echo "127.0.0.1 tnave@42.fr" >> /etc/hosts

start: 	
		mkdir -p ~/Home/data \
		&& mkdir ~/Home/data/wordpress \
		&& mkdir ~/Home/data/mariadb \
		&& docker-compose -f srcs/docker-compose.yml up --build

run:
		docker-compose -f srcs/docker-compose.yml up

stop:	
		docker-compose -f srcs/docker-compose.yml down

clean:	stop
		rm -rf	~/Home/data

prune:	clean
		docker-compose -f srcs/docker-compose.yml down --rmi all -v \
		&& docker system prune -f

.PHONY: conf start stop clean prune run all create


