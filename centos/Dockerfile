FROM centos:7

WORKDIR /var/www

RUN yum update -y
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum-config-manager --disable remi-php54
RUN yum-config-manager --enable remi-php74
RUN yum install -y php php-fpm php-mysqlnd php-zip php-devel php-gd php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json php-pdo php-pecl-apcu php-pecl-apcu-devel
COPY entrypoint.sh /var/www/html/entrypoint.sh

EXPOSE 80 8000

ENTRYPOINT ["sh","/var/www/html/entrypoint.sh"]