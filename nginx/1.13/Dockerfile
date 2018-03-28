FROM nginx:1.13

RUN 	mv /etc/nginx/conf.d /etc/nginx/conf.d.ba \
	&& ln -s /var/www/docker_compose/docker_conf/nginx/conf.d /etc/nginx

#RUN apt-get update \
#	&& apt-get install vim

VOLUME ["/var/www"]

