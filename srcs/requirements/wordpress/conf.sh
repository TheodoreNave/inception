#!/bin/bash

if [ -f ./wordpress/wp-config.php ]
then
		echo "ok"
else

wp core download --allow-root


wp config create --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost=mysql --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
wp core install --url="tnave.42.fr" --title="Theodore Nave" --admin_user="${WORDPRESS_ROOT_USER}"\
	--admin_password="${WORDPRESS_ROOT_PASSWORD}" --admin_email="tnave@student.42.fr" --skip-email --allow-root #Configure le site et l'admin
wp user create "${WORDPRESS_USER}" --user_pass="${WORDPRESS_PASSWORD}" test@example.com --role=author --allow-root

/usr/sbin/php-fpm7 -F -R

fi

exec "$@"