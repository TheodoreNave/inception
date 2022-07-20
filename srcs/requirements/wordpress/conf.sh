#!/bin/bash

# while ! mariadb -hlocalhost -u$WORDPRESS_DB_USER -p$WORDPRESS_DB_PASSWORD $MYSQL_DB_NAME &>/dev/null; do
    sleep 5
# done


# echo "missing wpconfig"
wp core download --allow-root

wp config create --dbname=$MYSQL_DB_NAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_USER_PASSWORD --dbhost=$MYSQL_ROOT_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
wp core install --url=tnave.42.fr --title=tnave --admin_user=$WORDPRESS_ADMIN_USER \
	--admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=tnave@student.42.fr --skip-email --allow-root #Configure le site et l'admin
wp user create $WORDPRESS_USER --user_pass=$WORDPRESS_PASSWORD test@example.com --role=author --allow-root



# fi

/usr/sbin/php-fpm7 -F -R
exec "$@"