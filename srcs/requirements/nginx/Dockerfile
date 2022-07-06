FROM 		debian:buster

RUN 		apt-get update \
			&&  apt-get install nginx -y \
			&&  apt-get install sudo -y \
			&& apt-get install vim -y \
			&& apt-get install systemd -y \
			&& apt-get install openssl -y	\
			&& apt install curl -y

COPY		./conf/nginx.conf 		/etc/nginx/
COPY		./conf.sh 			/tmp/

# CMD 		sudo service nginx restart

# CMD 		bash /tmp/conf.sh

