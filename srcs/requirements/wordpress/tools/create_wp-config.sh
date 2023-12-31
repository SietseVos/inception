#!/bin/bash
cat << EOF > /var/www/html/wp-config.php
<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '$DB_NAME' );

/** Database username */
define( 'DB_USER', '$DB_USER' );

/** Database password */
define( 'DB_PASSWORD', '$DB_PASS' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );
define('CONCATENATE_SCRIPTS', false);
define('WP_HOME','https://svos.42.fr');
define('WP_SITEURL','https://svos.42.fr');
/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'jjfiofj38986o5nnnnnjkh78' );
define( 'SECURE_AUTH_KEY',  'ryhcnbkgi7-kokjjr771=jgiofgi' );
define( 'LOGGED_IN_KEY',    'ghureg8eu89jipt-fd=iovjosjvisjw' );
define( 'NONCE_KEY',        'fgerr5y45yc23cnuhn' );
define( 'AUTH_SALT',        'vghfiughfiug89ty895yjy55nw' );
define( 'SECURE_AUTH_SALT', 'uw89yq8y7twygjvbfgji0-9iospfes0fipogdpi--' );
define( 'LOGGED_IN_SALT',   'mv-mifjuvyn78y7tmmgj73hbq,,' );
define( 'NONCE_SALT',       '.;.fekfioehwf7834ykonwu89v4v' );
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
\$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
EOF
echo DB_NAME: $DB_NAME
echo DB_USER: $DB_USER
