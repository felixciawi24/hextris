    FROM ubuntu 
    RUN apt update -y && apt install nginx -y
    ADD ./2048 /var/www/html/
    CMD nginx -g "daemon off;"