FROM nginx:alpine
MAINTAINER wuman

RUN sed -i.bak 's/80/9000/' /etc/nginx/conf.d/default.conf 
COPY www/index.html /usr/share/nginx/html

EXPOSE 9000

CMD /usr/sbin/nginx -g "daemon off;"
