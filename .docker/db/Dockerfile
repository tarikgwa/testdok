FROM ubuntu:14.04
MAINTAINER aboualitarik@gmail.com

RUN apt-get update && \
    apt-get -yq install mysql-server-5.6

RUN sed -i -e "s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

COPY run.sh /tmp/mysql_run.sh
RUN chmod +x /tmp/mysql_run.sh

EXPOSE 3306

ENTRYPOINT ["/tmp/mysql_run.sh"]
