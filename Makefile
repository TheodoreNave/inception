NAME = Inception

all:	conf start

re: 	prune start

conf: 
		echo "127.0.0.1 tnave@42.fr" >> /etc/hosts

start: 	
		mkdir -p ~/Desktop/inception_files \
		&& mkdir ~/Desktop/inception_files/wordpress \
		&& mkdir ~/Desktop/inception_files/mariadb \
		&& docker-compose -f srcs/docker-compose.yml up --build

run:
		docker-compose -f srcs/docker-compose.yml up

stop:	
		docker-compose -f srcs/docker-compose.yml down

clean:	stop
		rm -rf	~/Desktop/inception_files

prune:	clean
		docker-compose -f srcs/docker-compose.yml down --rmi all -v \
		&& docker system prune -f

.PHONY: conf start stop clean prune run all create re