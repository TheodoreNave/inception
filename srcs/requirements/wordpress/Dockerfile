FROM 		alpine:3.15

RUN 		apk update && apk upgrade && apk add --no-cache \
			wget 											\
			curl 											\
			tar 											\
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

		
RUN     	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
        	chmod +x wp-cli.phar && \
       		cp wp-cli.phar /usr/bin/wp

# WORKDIR 	/var/www/html

# RUN 		wget https://wordpress.org/latest.tar.gz

# RUN 		tar -xf latest.tar.gz \
# 			&& rm -rf latest.tar.gz

# WORKDIR 	/
# WORKDIR /var/www/html/wordpress
WORKDIR /var/www/html/wordpress/
RUN			adduser -S nginx &&	addgroup -S nginx

COPY 		./conf/www.conf 		/etc/php7/php-fpm.d/www.conf
COPY 		./conf/php-fpm.conf 	/etc/php7/php-fpm.conf
COPY 		./conf/wp-config.php 	/var/www/html/wordpress/

# RUN     	chmod -R 755 /var/www/
#check if exist in etc

# EXPOSE 		9000
# WORKDIR /var/www/html/wordpress
COPY		./conf.sh 				/tmp/

ENTRYPOINT [ "sh", "/tmp/conf.sh"]