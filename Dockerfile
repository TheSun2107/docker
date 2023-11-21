FROM ubuntu:20.04

WORKDIR /var/www

RUN apt-get update
RUN ln -snf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && echo Asia/Ho_Chi_Minh > /etc/timezone
RUN apt install -y php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath wget unzip nginx vim

COPY entrypoint.sh /var/www/html/entrypoint.sh
COPY dphim.pro /etc/nginx/sites-available/dphim.pro

RUN ln -s /etc/nginx/sites-available/dphim.pro /etc/nginx/sites-enabled/
RUN unlink /etc/nginx/sites-enabled/default

EXPOSE 80 443

ENTRYPOINT ["sh","/var/www/html/entrypoint.sh"]