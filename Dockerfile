FROM debian:8

MAINTAINER MiJacK <mijack@mijack.net>
RUN apt-get update
RUN apt-get install nginx -y
RUN echo 'hello world  2.1' > /var/www/html/index.html
RUN echo 'ok' > /var/www/html/healthcheck.html
COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
EXPOSE  80
CMD ["/entrypoint.sh"]

