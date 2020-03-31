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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Kkl2eeW58fMMrJgHJPwqGndaWa0b1ea4cofxL7inanaTuWLt5LVPpZxPJfjHEI0Uw3kgi0Oqwv3e3uCcIvAi9A==');
define('SECURE_AUTH_KEY',  '0ct9W95S4AaF6Th+ezcM8IUzQX3VQeA7uThM177wyqYjtFfk6t3Xy6ureNaUDUmo5tfaEnJnsYDuWyzvf0BMcw==');
define('LOGGED_IN_KEY',    'mBDFDWkbmy43ZwUYX38iQkahvLcBvUDtS7ofg2GHQGA4/QvvVnsyAutPrP5w3qXBrG0gxkl1LvgqfEId0tABFg==');
define('NONCE_KEY',        'MMgvqaAD7LQYncfiMefUmjFmdszvvSLVK9AZLd8Ok0Uy7fgyRmH1cK2wnok0OJI0iaLY2NO0jwKXFGql4a22cA==');
define('AUTH_SALT',        'EZSAtbILk/gRdprnyrD7f/CThVrcpiDB9StbxioorjRzOH2b9bjSF26Wj8JswpPNkvs6/SqVg7D9V070elv5jw==');
define('SECURE_AUTH_SALT', 'dnPNnO8+Rtz26otcuLLmfm1p5Kp1r9ceTjQ6LrAZE8tYU5jeN0XGQTxwuvH0TnejV0PjUHWQoO8kD3vlGcQ4vQ==');
define('LOGGED_IN_SALT',   'fMkN4bMEQQqTW3dUhpItNhNj1l+rolJeh72dCMyJ69L5RUjutQtUakifDLBRC1tYXHthP4SLMtbMA/WanDDYCQ==');
define('NONCE_SALT',       'sP4H4ot6EeigoIagMtkcXOm0bNqC24Qhve8KJjJisPoGt9mqsfrzsxm2Xp/pW7K59Z7B/+iLPVoNmE58mhPeNw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
