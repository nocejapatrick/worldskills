<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //

@ini_set('upload_max_size','20M');
/** The name of the database for WordPress */
define('DB_NAME', 'worldskills');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ';Yiu?fURy6-`4YK]3!I8G|z<I!2^M>f&*vLPzi}C#ZnXc?y;MGfsyQ++k#m6]fK|');
define('SECURE_AUTH_KEY',  ';g+x]9hbH^XQ%rxiO9s$or]K#P|a8v3/e1i3*7J}p=[}Wdpi.dt249i*b5qg#jwv');
define('LOGGED_IN_KEY',    'S9eLWIi&}bHcQ~DorTWE#7&Q%(*=+exF^x@vZBr)3~&Nz-7XVb/*iS$bjy1eki2s');
define('NONCE_KEY',        'F@}QGnwTopB{)LrRI&-_t}sQM}A2Z3!uMQ}vPxFBaX)hk,_}$t?~z<GepL <&5P^');
define('AUTH_SALT',        'CFMwpMaI?L+Lz|N?Sq9k)eE+O6(04Q,wlXu!7|BICN rwRNez0H(y.}S73~t~5}B');
define('SECURE_AUTH_SALT', 'BdxR(u]>.zvTgKldp(MAbLcIhiEl-,w]dq;LFGAl2|+3rkSN0Zm.GAiW]e>~M53L');
define('LOGGED_IN_SALT',   'dA48TyaxEYGHdWeVPi{>qs?{Z&I@8@NQ|XHK1YX[A98,NaV<.R4]|qGt!;S]{xFC');
define('NONCE_SALT',       ';Jr.ffz,-l5w{SB]Zz.@q+?{<c+RHnQiT<1{:jsFE`ti*]~q-a<d}69wz|7R2v;$');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
