#use the official ubuntu
FROM ubuntu

#update the package and install apache2
RUN apt-get update -y && \
    apt-get install apache2 -y

#copy the index.html file to the apache root directory
COPY index.html /var/www/html/

#start the apache2 service in the foreground
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
