NAME = Inception

all:	prune start

start: 	
		mkdir -p /home/tnave/data \
		&& mkdir /home/tnave/data/wordpress \
		&& mkdir /home/tnave/data/mariadb \
		&& docker-compose -f srcs/docker-compose.yml up --build

run:
		docker-compose -f srcs/docker-compose.yml up

stop:	
		docker-compose -f srcs/docker-compose.yml down

clean:	stop
		rm -rf	/home/tnave/data

prune:	clean
		docker-compose -f srcs/docker-compose.yml down --rmi all -v \
		&& docker system prune -f

.PHONY: start stop clean prune run all create


