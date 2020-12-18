FROM centos:latest
MAINTAINER govardhan.nelli2@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://freewebsitetemplates.com/download/rehabilitation-yoga/rehabilitation.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip rehabilitation.zip
RUN cp -rvf rehabilitation/* .
RUN rm -rf rehabilitation rehabilitation.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
