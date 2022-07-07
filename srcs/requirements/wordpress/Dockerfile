FROM 		debian:buster

RUN 		apt-get update \
 			&& apt-get upgrade -y \
			&&  apt-get install sudo -y \
			&& apt-get install wget -y \
			&& apt-get install php php-cgi php-mysql php-fpm php-pdo php-cli php-gd php-mbstring php-xml -y

RUN 		wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz

RUN 		tar -xf phpMyAdmin-5.1.0-all-languages.tar.gz \
			&& rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz \
			&& mv phpMyAdmin-5.1.0-all-languages ../usr/share/phpmyadmin/ 

# RUN			ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

COPY		./conf.sh 				/tmp/

CMD 		bash /tmp/conf.sh

WORKDIR 	/var/www/html/

EXPOSE 		9000
