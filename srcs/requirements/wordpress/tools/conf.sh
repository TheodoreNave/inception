#!/bin/bash

# Add while

sleep 5

if [ ! -f "/var/www/html/wordpress/wp-config.php" ]; then

	# Download Wordpress
	wp core download --allow-root

	# Create wp-config.php
	wp config create --dbname=$WP_DATABASE_NAME --dbuser=$WP_DATABASE_USR 			\
					 --dbpass=$WP_DATABASE_PWD --dbhost=$MYSQL_HOST 	 			\
					 --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root

	# Install Wordpress and create Admin
	wp core install  --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USR \
					 --admin_password=$WP_ADMIN_PWD --admin_email=$WP_EMAIL 		\
					 --skip-email --allow-root

	# Create Basic User
	wp user create $WP_USR --user_pass=$WP_PWD test@example.com --role=author --allow-root

	echo "Finish Wordpress Installation"
fi

echo "=========All Done========="
/usr/sbin/php-fpm7 -F -R
exec "$@"