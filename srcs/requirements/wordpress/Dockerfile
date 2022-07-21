FROM 		alpine:3.15

RUN 		apk update && apk upgrade && apk add --no-cache \
			wget 											\
			mariadb-client									\
			php7											\
			php7-bcmath 									\
			php7-bz2 										\
			php7-ctype 										\
			php7-curl 										\
			php7-dom 										\
			php7-enchant 									\
			php7-exif 										\
			php7-fpm 										\
			php7-gd 										\
			php7-gettext 									\	
			php7-gmp 										\
			php7-iconv										\
			php7-imap 										\
			php7-intl 										\
			php7-json 										\
			php7-mbstring 									\
			php7-mysqli										\
			php7-mysqlnd									\
			php7-opcache 									\
			php7-openssl 									\
			php7-phar 										\
			php7-posix 										\
			php7-pspell 									\
			php7-session 									\
			php7-simplexml 									\	
			php7-sockets 									\
			php7-sysvmsg 									\
			php7-sysvsem 									\
			php7-sysvshm 									\
			php7-tidy 										\
			php7-xml 										\
			php7-xmlreader 									\
			php7-xmlrpc 									\
			php7-xmlwriter 									\
			php7-xsl 										\
			php7-zip 										\
			php7-sqlite3									\
			php7-zlib	

		
RUN			wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
			&& chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && chmod +x /usr/local/bin/wp

WORKDIR 	/var/www/html/wordpress/
RUN			adduser -S nginx &&	addgroup -S nginx

COPY 		./conf/www.conf 		/etc/php7/php-fpm.d/www.conf
COPY 		./conf/php-fpm.conf 	/etc/php7/php-fpm.conf

RUN     	chmod -R 755 /var/www/

COPY		./conf.sh 				/tmp/conf.sh

ENTRYPOINT [ "sh", "/tmp/conf.sh"]