FROM ubuntu:18.04
RUN apt-get update && \
       apt-get install -y --no-install-recommends apt-utils

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y --no-install-recommends apache2 libapache2-mod-php libapache2-mod-security2 php php-dev 

## for apt to be noninteractive

## preesed tzdata, update package index, upgrade packages and install needed software
RUN echo "tzdata tzdata/Areas select Aisa" > /tmp/preseed.txt; \
    echo "tzdata tzdata/Zones/Europe select Tehran" >> /tmp/preseed.txt; \
    debconf-set-selections /tmp/preseed.txt && \
    apt-get update && \
    apt-get install -y tzdata
#RUN a2enconf phpmyadmin.conf
RUN a2enmod security2
RUN a2enmod expires
RUN a2enmod rewrite
#RUN service apache2 reload
#RUN systemctl restart apache2
EXPOSE 80
#CMD systemctl restart apache2
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
