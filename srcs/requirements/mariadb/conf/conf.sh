#!/bin/bash

mkdir -p /run/mysqld

chown -R mysql:mysql /run/mysqld

chown -R mysql:mysql /var/lib/mysql

mysql_install_db  --basedir=/usr --datadir=/var/lib/mysql --user=mysql
