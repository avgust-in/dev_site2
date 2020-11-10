FROM ubuntu:xenial
RUN apt-get update
RUN apt-get install -y apache2 \
	php \
	libapache2-mod-php \
	php-mcrypt \
	php-mysql \
	php-cgi \
	php-curl \
	php-json

EXPOSE 80
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
#RUN chmod -R 755 /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
