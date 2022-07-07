FROM 		debian:buster

RUN 		apt-get update \
			&&  apt-get install nginx -y \
			&&  apt-get install sudo -y \
			&& apt-get install wget -y \
			&& apt-get install vim -y \
			&& apt-get install systemd -y \
			&& apt-get install openssl -y	\
			&& apt install curl -y

# COPY		./conf/nginx.conf 		/etc/nginx/

COPY			./conf.sh 				/tmp/

COPY			./conf/nginx.conf 		/etc/nginx/sites-available/localhost

RUN				ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost

# CMD 		sudo service nginx restart

WORKDIR			/var/www/html/


RUN 			chown -R www-data:www-data *

RUN				openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=FR/ST=75/L=Paris/O=42/CN=tnave' -keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

CMD 			bash /tmp/conf.sh

EXPOSE 			80 443