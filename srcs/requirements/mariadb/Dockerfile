FROM 			alpine:3.13

RUN 			apk update && apk upgrade && apk add --no-cache \
				mariadb											\
				mariadb-client									\
				vim				

COPY 			./conf/script.sql		/tmp/script.sql

COPY 			./conf/conf.sh 			/tmp/conf.sh

# EXPOSE 			3306		

ENTRYPOINT 		[ "sh", "/tmp/conf.sh" ]