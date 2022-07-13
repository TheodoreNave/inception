#!/bin/sh

# If folder doesn't exist
if [ ! -d "/run/mysqld"]; then

	mkdir -p /run/mysqld
	chown -R mysql:mysql /run/mysqld/
fi


# If folder doestn't exist

if [ ! -d "/var/lib/mysql"]; then

	chown -R mysql:mysql /var/lib/mysql/
	mysql_install_db  --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm > /dev/null
fi


# Launch with the file setup.sql then delete
/usr/bin/mysqld --user=mysql --bootstrap < /tmp/setup.sql
rm -rf setup.sql


# Allow connections
sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf
sed -i "s|.*skip-networking.*|skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf

# Execute MySql

exec /usr/bin/mysqld --user=mysql --console