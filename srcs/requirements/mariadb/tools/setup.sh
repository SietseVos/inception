#!/bin/bash
mysqld --initialize --datadir=/var/lib/mysql
cd /var/lib/mysql
service mysql start
#service mysql stop
#/etc/init.d/mysql stop
#mysql_install_db --defaults-file=/root/.my.cnf


#echo "CREATE DATABASE $DB_NAME;" > init.sql
#echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" >> init.sql
#echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASS');"
#echo "CREATE USER 'root'@'localhost' IDENTIFIED BY '$DB_PASS';"
#echo "GRANT ALL ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" >> init.sql
#e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_PASS';"
#e "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$DB_PASS';"
#echo "FLUSH PRIVILEGES;" >> init.sql

#echo "starting mysqld for init querries"
#mysqld --datadir=/var/lib/mysql &

#mariadb --user=root -e "CREATE DATABASE $DB_NAME;"
#mariadb --user=root -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
##mariadb --user=root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASS');"
##mariadb --user=root -e "CREATE USER 'root'@'localhost' IDENTIFIED BY '$DB_PASS';"
#mariadb --user=root -e "GRANT ALL ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
##mariadb --user=root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_PASS';"
##mariadb --user=root -e "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$DB_PASS';"
#mariadb --user=root -e "FLUSH PRIVILEGES;"

echo "doing mysql commands"
mariadb --user=root -e "CREATE DATABASE cool_db_name;"
mariadb --user=root -e "CREATE USER 'weird_user'@'%' IDENTIFIED BY 'pass123';"
#mariadb --user=root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASS');"
#mariadb --user=root -e "CREATE USER 'root'@'localhost' IDENTIFIED BY '$DB_PASS';"
mariadb --user=root -e "GRANT ALL ON *.* TO 'weird_user'@'%' IDENTIFIED BY 'pass123';"
#mariadb --user=root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'pass123';"
#mariadb --user=root -e "UPDATE mysql.user SET plugin = '' WHERE user = 'root' AND host = 'localhost';"
#mariadb --user=root -e "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$DB_PASS';"
mariadb --user=root -e "FLUSH PRIVILEGES;"
#echo "done with init queries"
#service mysql stop

mysqladmin shutdown

echo "starting mysqld"

mysqld --datadir=/var/lib/mysql
