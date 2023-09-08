FROM debian:buster

RUN apt update
RUN apt upgrade -y
RUN apt-get install -y php7.3
RUN apt-get install -y php7.3-fpm
RUN apt install -y curl
RUN apt-get install -y php7.3-mysql
RUN apt install -y mariadb-client
RUN mkdir /run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp-cli.phar


#COPY conf/wp-config.php /wp-config.php
COPY tools /tools
#RUN /tools/create_wp-config.sh
COPY conf/www.conf /etc/php/7.3/fpm/pool.d

EXPOSE 9000

RUN chmod 777 /tools/setup.sh

CMD ["/tools/setup.sh"]
