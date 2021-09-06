FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page239/homestate.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip homestate.zip
RUN cp -rvf homestate/* .
RUN rm -rf homestate homestate.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
