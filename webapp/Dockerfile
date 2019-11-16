FROM centos
RUN yum install httpd php php-mysql php-gd php-xml mysql
WORKDIR /root/mediawikiapp
COPY ./mediawiki/* /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]