FROM alpine:latest AS source

RUN mkdir -p /var/www/html
RUN mkdir -p /run/nginx
RUN rm /etc/nginx/http.d/default.conf

COPY ./meta/index.html /var/www/html/index.html
COPY ./meta/site.conf /etc/nginx/http.d/site.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
