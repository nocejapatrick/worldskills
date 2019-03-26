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
/** The name of the database for WordPress */
define( 'DB_NAME', 'worldskills' );

/** MySQL database username */
define( 'DB_USER', 'dev' );

/** MySQL database password */
define( 'DB_PASSWORD', 'dev' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '~RU1N0]jZvOf6WZ%U$ZPvQvi/=J%`!-1]}ehW!+E-xZ|AhP(bxSCul1>:qk?pK^l' );
define( 'SECURE_AUTH_KEY',  '|H4b;zW0A7kDq~R+t<Uj/Ao>,.LW&k~624b.oJ{c5:pDP(**_.7psIsKZsFez~:[' );
define( 'LOGGED_IN_KEY',    'CqHfB]V:Mn5p-rh+2W:^N&Mru~V-^~i%PColnNJ:YrMkH e,5%m[NiTZSo6RP15z' );
define( 'NONCE_KEY',        'Fw89?Z+qips`zb2IE8hZ~L6;E<Q>zg;F](qJy9$J5lkmVoJqO3x1Q]I)O6&haPz/' );
define( 'AUTH_SALT',        'vo#nRTba562tcgYIJ78,HO~mh*yef.}#KebN%GD}|W<hLcB83)E}32gV4!X3m!k#' );
define( 'SECURE_AUTH_SALT', '/WzUvGehX _{3WD{P%AGr%SzuSCKz>L(^Haj_Ql H@o8dqo;0[:K1(I`iZ+WpA;j' );
define( 'LOGGED_IN_SALT',   '~@dqCy/Ls7>(d|fVOF[&HKwg0G/m^RO6/38Vw#|dpj%:UC2/=/rL !TwCCX4zSz:' );
define( 'NONCE_SALT',       'q>u%%Y}.8)6s;C1,,0|.(FPNeGi;T#H!U*Ff).Z/40VNlF,QpDi1k}xYoUiwy= #' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'ws_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
