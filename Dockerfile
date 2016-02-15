RUN docker-compose build
RUN chmod -R o+w var var/.htaccess app/etc
RUN chmod -R o+w pub/media pub/static
RUN docker-compose up -d

