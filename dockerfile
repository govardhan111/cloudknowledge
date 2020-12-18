FROM centos:latest
MAINTAINER govardhan.nelli2@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://freewebsitetemplates.com/#google_vignette/running.zip /var/www/html/WORKDIR /var/www/html
RUN unzip running.zip
RUN cp -rvf running/* .
RUN rm -rf running.zip
CMD ["/usr/sbin/httpd","-0", "FOREGROUND"]
