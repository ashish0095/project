FROM centos:7
LABEL name=ashish
RUN yum install httpd -y
COPY *  /var/www/html/
CMD ["httpd","-D","FOREGROUND"]
