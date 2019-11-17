FROM centos:7
RUN yum install httpd php php-mysql php-gd php-xml mariadb-server mariadb php-mbstring
WORKDIR /root/mediawikiapp
COPY mediawiki/ /var/www/html/
EXPOSE 80
ARG ""
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]