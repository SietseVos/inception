#!/bin/bash
#wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbhost=mariadb --dbpass=$DB_PASS --allow-root

if ! wp core is-installed --path="/var/www/html" --allow-root; then
	#/tools/create_wp-config.sh
	wp config create --path="/var/www/html" --dbname=$DB_NAME --dbuser=$DB_USER --dbhost=mariadb --dbpass=$DB_PASS --allow-root
	wp core download --path="/var/www/html" --allow-root
	wp core install --path="/var/www/html" --allow-root --url=svos.42.fr --title=inception --admin_user=$DB_USER --admin_password=$DB_PASS --admin_email=sietserensvos@gmail.com --skip-email
	wp user create $WP_USER test@gmail.com --path="/var/www/html" --user_pass=$WP_PASS --allow-root
else
	echo "wordpress is already installed"
fi
php-fpm7.3 -F
