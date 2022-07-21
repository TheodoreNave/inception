FROM 			alpine:3.15

RUN 			apk update && apk upgrade && apk add --no-cache \
				mariadb											\
				mariadb-common									\
				mariadb-client

COPY 			./conf/conf.sh 			/tmp/conf.sh


ENTRYPOINT 		[ "sh", "/tmp/conf.sh" ]