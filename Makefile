NAME = Inception

all:	prune reload

start: echo "127.0.0.1 tnave@42.fr" >> /etc/hosts

stop:

clean:	stop

prune:	clean

reload:


.PHONY: start stop clean reload all