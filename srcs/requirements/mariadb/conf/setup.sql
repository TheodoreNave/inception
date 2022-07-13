USE mysql;
FLUSH PRIVILEGES;

DELETE FROM	mysql.user WHERE User='';
DROP DATABASE test;

DELETE FROM mysql.db WHERE Db='test';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');


ALTER USER 'root'@'localhost' IDENTIFIED BY 'theo';
CREATE DATABASE $test CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE USER 'theo'@'%' IDENTIFIED by 'theo';
GRANT ALL PRIVILEGES ON $test.* TO '$test'@'%';
FLUSH PRIVILEGES;
