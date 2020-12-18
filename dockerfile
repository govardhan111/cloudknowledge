FROM centos:latest
MAINTAINER govardhan.nelli2@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://freewebsitetemplates.com/#google_vignette/running.zip /var/www/html/WORKDIR /var/www/html
RUN unzip Softy Pinko Free Website Template - Free-CSS.com.zip
RUN cp -rvf Softy Pinko Free Website Template - Free-CSS.com/* .
RUN rm -rf Softy Pinko Free Website Template - Free-CSS.com.zip
CMD ["/usr/sbin/httpd","-0", "FOREGROUND"]
