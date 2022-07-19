FROM centos:7
LABEL name=ujjwal
RUN yum install httpd -y
COPY *  /var/www/html
CMD ["httpd","-D","FOREGROUND"]
