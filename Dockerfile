FROM httpd:2.4

WORKDIR /usr/local/apache2

ADD conf conf
ADD docker-entrypoint.sh docker-entrypoint.sh
ADD htpasswd htdocs/.htpasswd

ENV CONF_FILE home

ENTRYPOINT ["./docker-entrypoint.sh"]
