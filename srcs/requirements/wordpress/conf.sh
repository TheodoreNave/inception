#!/bin/bash

# while ! mariadb -hlocalhost -uroot -proot root &>/dev/null; do
sleep 5
# done


# echo "missing wpconfig"
# wp core download --allow-root

wp config create --dbname="root123" --dbuser="root" --dbpass="root" --dbhost=mariadb --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
wp core install --url="tnave.42.fr" --title="Theodore Nave" --admin_user="tnave"\
	--admin_password="tnave" --admin_email="tnave@student.42.fr" --skip-email --allow-root #Configure le site et l'admin
wp user create "tnave" --user_pass="tnave" test@example.com --role=author --allow-root



# fi

/usr/sbin/php-fpm7 -F -R
exec "$@"