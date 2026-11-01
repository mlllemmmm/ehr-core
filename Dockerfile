FROM alpine
RUN apk add --no-cache busybox-extras && mkdir -p /www && echo "Patient Data Vault Active" > /www/index.html
EXPOSE 80
CMD echo "Patient Data Vault Active" && busybox-extras httpd -f -p 80 -h /www
