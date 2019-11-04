FROM alpine:latest
LABEL Name=vegefoods Version=0.0.1
RUN apk update && apk add apache2 php7 php7-apache2
COPY ./httpd.conf /etc/apache2/httpd.conf
COPY ./src /app
COPY ./run.sh /run.sh
RUN chmod +x /run.sh
WORKDIR /app
EXPOSE 8000
ENTRYPOINT [ "/run.sh"]
