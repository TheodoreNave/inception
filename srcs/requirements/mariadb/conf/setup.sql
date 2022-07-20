USE mysql;
-- FLUSH PRIVILEGES;
-- DELETE FROM	mysql.user WHERE User='';
-- DROP DATABASE test;
-- DELETE FROM mysql.db WHERE Db='test';
-- DELETE FROM mysql.user WHERE User='theodorenave' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';

CREATE DATABASE $MYSQL_DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE USER '$MYSQL_USER'@'%' IDENTIFIED by '$MYSQL_USER_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO 'MYSQL_USER'@'%';
-- grant ALL PRIVILEGES on *.* to tnave@wordpress.srcs_docker_network identified by 'tnave' with grant option;
FLUSH PRIVILEGES;