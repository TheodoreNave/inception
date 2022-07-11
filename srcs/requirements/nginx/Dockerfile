FROM 		alpine:3.16

RUN 		apt-get update \
 			&& apt-get upgrade -y \
			&&  apt-get install nginx -y \
			&&  apt-get install sudo -y \
			&& apt-get install vim -y \
			&& apt-get install openssl -y

COPY		./conf.sh 				/tmp/

COPY		./conf/nginx.conf 		/etc/nginx/conf.d

RUN			openssl req -x509 -nodes -days 365 -newkey \
				rsa:2048 -subj '/C=FR/ST=75/L=Paris/O=42/CN=tnave' -keyout \
					/etc/ssl/certs/tnave.42.fr.key -out /etc/ssl/certs/tnave.42.fr.crt

# CMD 		bash /tmp/conf.sh

EXPOSE 		443

CMD 		["nginx", "-g", "daemon off;"]'