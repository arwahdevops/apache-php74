FROM arwahdevops/apache-php74:latest

#Copy apache2 config
RUN mkdir /var/www/html/app
COPY /config/app.conf /etc/apache2/sites-available/
#Copy APP
COPY index.html /var/www/html/app
#Enable VHOST
RUN a2dissite 000-default.conf
RUN a2ensite app.conf
