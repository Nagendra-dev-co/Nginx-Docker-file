FROM ubuntu:22.04 
LABEL MAINTANER="NAGENDRA REDDY<rnagendra182@gamail.com>" 
RUN apt update && apt install -y nginx 
COPY src/index.html  /usr/share/nginx/html 
COPY src/index.html  /var/www/html
EXPOSE 80
CMD [ "nginx","-g","daemon off" ]