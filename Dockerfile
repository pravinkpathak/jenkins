
FROM ubuntu
RUN apt-get update
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -y install apache2 
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV name Intellipaat Ayupp

