FROM 			alpine:3.15

RUN 			apk update && apk upgrade && apk add --no-cache \
				mariadb 		\
				mariadb-client	\
				vim

COPY 			./conf/conf.sql		/usr/bin/conf.sql

COPY 			./conf/conf.sh 		/tmp/conf.sh

ENTRYPOINT [ "sh", "/tmp/conf.sh" ]