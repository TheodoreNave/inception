FROM 		alpine:3.13

RUN 		apk update && apk upgrade && apk add --no-cache \
			wget 				\
			tar 				\
			php7				\
			php7-bcmath 		\
			php7-bz2 			\
			php7-ctype 			\
			php7-curl 			\
			php7-dom 			\
			php7-enchant 		\
			php7-exif 			\
			php7-fpm 			\
			php7-gd 			\
			php7-gettext 		\	
			php7-gmp 			\
			php7-iconv			\
			php7-imap 			\
			php7-intl 			\
			php7-json 			\
			php7-mbstring 		\
			php7-mysqli			\
			php7-mysqlnd		\
			php7-opcache 		\
			php7-openssl 		\
			php7-phar 			\
			php7-posix 			\
			php7-pspell 		\
			php7-session 		\
			php7-simplexml 		\	
			php7-sockets 		\
			php7-sysvmsg 		\
			php7-sysvsem 		\
			php7-sysvshm 		\
			php7-tidy 			\
			php7-xml 			\
			php7-xmlreader 		\
			php7-xmlrpc 		\
			php7-xmlwriter 		\
			php7-xsl 			\
			php7-zip 			\
			php7-sqlite3		\
			php7-zlib	
		
# RUN 		wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz

# RUN 		tar -xf phpMyAdmin-5.1.0-all-languages.tar.gz \
# 			&& rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz \
# 			&& mv phpMyAdmin-5.1.0-all-languages ../usr/share/phpmyadmin/ 

WORKDIR 	/var/www/html/

RUN 		wget https://wordpress.org/latest.tar.gz

RUN 		tar -xf latest.tar.gz \
			&& rm -rf latest.tar.gz
# RUN		ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

WORKDIR 	/

RUN			adduser -S nginx &&	addgroup -S nginx

COPY 		./conf/www.conf 		/etc/php7/php-fpm.d/www.conf
# COPY 		./conf/php-fpm.conf 	/etc/php7/php-fpm.conf

# RUN 		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN 		chmod +x wp-cli.phar
# RUN 		cp wp-cli.phar /usr/bin/wp

EXPOSE 		9000
COPY		./conf.sh 				/tmp/

ENTRYPOINT [ "sh", "/tmp/conf.sh"]