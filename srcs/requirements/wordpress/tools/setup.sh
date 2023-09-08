#!/bin/bash
#wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbhost=mariadb --dbpass=$DB_PASS --allow-root

if ! wp-cli.phar core is-installed --path="/var/www/html" --allow-root; then
	#/tools/create_wp-config.sh
	echo in if-statement
	wp-cli.phar core download --path="/var/www/html" --allow-root
	echo if 1
	wp-cli.phar config create --path="/var/www/html" --dbname=$DB_NAME --dbuser=$DB_USER --dbhost=mariadb --dbpass=$DB_PASS --allow-root
	echo if 2
	wp-cli.phar core install --path="/var/www/html" --allow-root --url=svos.42.fr --title=inception --admin_user=$DB_USER --admin_password=$DB_PASS --admin_email=sietserensvos@gmail.com --skip-email
	echo if 3
	wp-cli.phar user create $WP_USER test@gmail.com --path="/var/www/html" --user_pass=$WP_PASS --allow-root
	echo if 4
else
	echo "wordpress is already installed"
fi
php-fpm7.3 -F
