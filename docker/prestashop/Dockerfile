
# inherits from official image
FROM prestashop/prestashop:8

EXPOSE 80 443


RUN a2enmod rewrite ssl && \
	rm -f /etc/apache2/sites-enabled/000-default.conf

COPY apache-config/* /etc/apache2/conf-enabled/
COPY ssl /etc/apache2/ssl
COPY install.sh /usr/local/bin

RUN chmod 755 /usr/local/bin/*.sh


