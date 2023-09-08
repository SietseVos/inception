FROM debian:buster

RUN apt update
RUN apt upgrade -y
RUN apt install -y mariadb-server
RUN mkdir /var/run/mysqld
RUN chmod -R 777 /var/run/mysqld
RUN mkdir /tools

COPY tools/setup.sh /tools
COPY conf/my.cnf /root/.my.cnf
COPY conf/my.cnf /etc/my.cnf
COPY conf/my.cnf /etc/mysql/.my.cnf

RUN chown -R mysql:root /var/run/mysqld
#RUN sed -i "s/bind-address.*/bind-address = mariadb/" /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306



CMD ["/tools/setup.sh"]


