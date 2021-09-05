FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page241/sports.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip sports.zip
RUN cp -rvf sports/* .
RUN rm -rf sports sports.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
