FROM nginx:latest

ADD ./FrontendApplication/vhost.conf /etc/nginx/conf.d/default.conf

COPY ./FrontendApplication/dist /var/www
