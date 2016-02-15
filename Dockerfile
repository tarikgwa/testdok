FROM ubuntu:14.04
MAINTAINER aboualitarik@gmail.com

RUN docker-compose build
RUN cd html/
RUN chmod -R o+w var var/.htaccess app/etc
RUN chmod -R o+w pub/media pub/static
RUN docker-compose up -d

