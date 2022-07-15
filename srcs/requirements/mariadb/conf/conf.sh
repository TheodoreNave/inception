#!/bin/sh

# if [ ! -d "/run/mysqld" ]; then
	mkdir -p /run/mysqld
	chown -R mysql:mysql /run/mysqld

# fi

# if [ ! -d /var/lib/mysql/mysql ]; then

	touch	/var/lib/mysql/mysql.sock
  	chown -R mysql:mysql /var/lib/mysql

  	mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm > /dev/null

#   if [ ! -f "setup.sql" ]; then
#       return 1
#   fi

  /usr/bin/mysqld --user=mysql --bootstrap < /tmp/setup.sql
  rm -f setup.sql
# fi
sed -i "s|skip-networking|# skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf
sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

exec /usr/bin/mysqld --user=mysql --console
