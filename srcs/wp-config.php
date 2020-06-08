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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_db' );

/** MySQL database username */
define( 'DB_USER', 'hakam' );

/** MySQL database password */
define( 'DB_PASSWORD', 'hakam' );

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
define( 'AUTH_KEY',         'Zu/ 3IE5Hd;jJf2bR,Se)G*vn|#knCV=GcsC8%l*rmNp-=Yg3yS0rcT)7x+F<?$A' );
define( 'SECURE_AUTH_KEY',  'nK5fP.jSw=Z$+^`~Q$?QI1?D&;&98$&816(y|#EP6#]w$C*%#xHwK)a5Q28AOi!l' );
define( 'LOGGED_IN_KEY',    'ouZ,yxV3*`;TP99XQk ~uQb8-9u>7m7Z44xXu:]qr?pqdj2c T$dzN>!6g|=1/Zo' );
define( 'NONCE_KEY',        ';sCl=^sf$p[Y{,5$=5;7`nk*FsvE|F<)D4dIcx^EFK3Q+=jQ6-xX]F4pfpeGk!cb' );
define( 'AUTH_SALT',        'wXDw;gd{sot~Zf&[UD#3kpJA9PU)mHW5exbp[v~79vh{lmgK6,QgX=P6%EG>599>' );
define( 'SECURE_AUTH_SALT', 'X[,hkm%s$!4=F]pLOw8iu*R2%npGcKS7$|Fy1|#.[#:@-7B_eDSd>^O17I1uAJf-' );
define( 'LOGGED_IN_SALT',   '>)H|#noR4GX6!#iF6~N6n{*%5*G!KV$5-)1H7HicNr ^UmOV_vr>a+R$~*J<pF>(' );
define( 'NONCE_SALT',       '4.l RqEq%]3214iMl}|#*OrPhLZUtG!|MP$0I1=-4Fv ><+B3wahbK,bOd#XF446' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
