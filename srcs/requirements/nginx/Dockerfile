FROM 			alpine:3.15

RUN 			apk update && apk upgrade && apk add --no-cache \
				nginx 	\
				vim 	\
				openssl

RUN 			mkdir /etc/nginx/ssl

RUN				openssl req -x509 -nodes -days 365 -newkey \
					rsa:4096 -subj '/C=FR/ST=75/L=Paris/O=42/CN=tnave' -keyout \
						/etc/nginx/ssl/tnave.42.fr.key -out /etc/nginx/ssl/tnave.42.fr.pem

RUN				mkdir -p /run/nginx

#pid a determiner

# if [ ! -d /run/nginx ]; then

# mkdir /run/nginx

# +fi

COPY			./conf/nginx.conf 		/etc/nginx/http.d/default.conf

# EXPOSE 			443

ENTRYPOINT 		[ "nginx", "-g", "daemon off;" ]