
# Inception


> ***SysAdmin project***

* This project consists in having you set up a small infrastructure composed of different services under specific rules with docker-compose.


## Usage :

Clone the project :

```bash
  git clone https://github.com/TheodoreNave/inception.git && cd inception/
```

Setup hosts file :

```bash
  echo "127.0.0.1 login.42.fr" >> vim /etc/hosts
```

Launch :

```bash
  make
```

Up / Down :

```bash
  make up
  make down
```

Go to :

```bash
  https://login.42.fr
```
## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

* `DOMAIN_NAME`

* `MYSQL_ROOT_PASSWORD` 

* `MYSQL_HOST`

* `WP_DATABASE_NAME`

* `WP_DATABASE_USR`

* `WP_DATABASE_PWD`

* `WP_ADMIN_USR`

* `WP_ADMIN_PWD`

* `WP_USR`

* `WP_PWD`

* `WP_TITLE`

* `WP_EMAIL`

## Documentation

* [Wordpress-CLI](https://wp-cli.org/fr/)

* [SSL](https://www.digitalocean.com/community/tutorials/how-to-create-an-ssl-certificate-on-nginx-for-ubuntu-14-04)

* [Php-Fpm](https://wiki.alpinelinux.org/wiki/Production_LAMP_system:_Lighttpd_%2B_PHP_%2B_MySQL)

* [Volumes](https://devopsheaven.com/docker/docker-compose/volumes/2018/01/16/volumes-in-docker-compose.html)

* [TLS](https://www.cyberciti.biz/faq/configure-nginx-to-use-only-tls-1-2-and-1-3/) 

* [Mariadb](https://github.com/yobasystems/alpine-mariadb)

* [.env](https://towardsdatascience.com/a-complete-guide-to-using-environment-variables-and-files-with-docker-and-compose-4549c21dc6af)
