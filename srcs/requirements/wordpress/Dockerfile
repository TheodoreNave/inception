FROM 		debian:buster

RUN 		apt-get update \
 			&& apt-get upgrade -y \
			&&  apt-get install sudo -y \
			&& apt-get install wget -y \
			&& apt-get install php7.3 php-mysql php-fpm php-cli php-mbstring php-xml -y


RUN 		wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz

RUN 		tar -xf phpMyAdmin-5.1.0-all-languages.tar.gz \
			&& rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz \
			&& mv phpMyAdmin-5.1.0-all-languages ../usr/share/phpmyadmin/ 

WORKDIR 	/var/www/html/

RUN 		wget https://wordpress.org/latest.tar.gz

RUN 		tar -xf latest.tar.gz \
			&& rm -rf latest.tar.gz
# RUN			ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

WORKDIR 	/

COPY 		./conf/www.conf 	/etc/php/7.3/fpm/pool.d/

COPY		./conf.sh 				/tmp/

CMD 		bash /tmp/conf.sh


EXPOSE 		9000
