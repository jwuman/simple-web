FROM alpine:latest
MAINTAINER wuman

RUN apk add --no-cache nginx && mkdir /run/nginx
RUN sed -i.bak 's/80/9000/' /etc/nginx/conf.d/default.conf 
RUN sed -i.bak 's#return 404#root /var/www/#' /etc/nginx/conf.d/default.conf 
COPY www/index.html /var/www/

EXPOSE 9000

CMD /usr/sbin/nginx -g "daemon off;"
