FROM ubuntu:14.04
MAINTAINER aboualitarik@gmail.com

RUN apt-get update
RUN apt-get install -y git curl apache2 php5 libapache2-mod-php5 php5-cli php5-mcrypt php5-mysql php5-curl php5-gd php5-imagick phpunit php5-intl php5-xsl

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    ln -s ~/.composer/vendor/bin/* /usr/local/bin/
RUN rm -r /var/www/html
# html.tar.gz /var/www/
RUN php5dismod xdebug
RUN php5enmod mcrypt
RUN a2enmod rewrite
#RUN chmod -R o+w var var/.htaccess app/etc
#RUN chmod -R o+w pub/media pub/static
#RUN sed -i "s|\("^ServerName" * *\).*|localhost|" /etc/apache2/apache2.conf
RUN sed -e 's/DirectoryIndex/DirectoryIndex index.php/' < /etc/apache2/mods-enabled/dir.conf > /tmp/foo.sed
RUN mv /tmp/foo.sed /etc/apache2/mods-enabled/dir.conf
WORKDIR /var/www/html

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]
