FROM centos:latest
MAINTAINER govardhan.nelli2@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://freewebsitetemplates.com/download/rehabilitation-yoga/rehabilitation.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip rehabilitation.zip
RUN cp -rvf rehabilitation/* .
RUN rm -rf rehabilitation.zip
CMD ["/usr/sbin/httpd","-0", "FOREGROUND"]
EXPOSE 80
