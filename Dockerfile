FROM ubuntu:latest
RUN apt-get update
RUN apt-get install python3 -y
#RUN apt-get install -y apache2
#CMD ["apache2ctl", "-D", "FOREGROUND"]