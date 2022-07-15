FROM 			alpine:3.15

RUN 			apk update && apk upgrade && apk add --no-cache \
				mariadb											\
				mariadb-common									\
				mariadb-client									\
				vim				

COPY 			./conf/setup.sql		/tmp/setup.sql

COPY 			./conf/conf.sh 			/tmp/conf.sh

EXPOSE 			3306		

ENTRYPOINT 		[ "sh", "/tmp/conf.sh" ]