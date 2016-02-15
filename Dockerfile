FROM ubuntu:14.04
MAINTAINER aboualitarik@gmail.com
RUN bash 1.sh
RUN cd html/
RUN chmod -R o+w var var/.htaccess app/etc
RUN chmod -R o+w pub/media pub/static

