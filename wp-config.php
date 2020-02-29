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
define( 'DB_NAME', 'fa_dwinsteam' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

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
define( 'AUTH_KEY',         '@.9O4D+0Pv/F$[@/PqzHlG!>K$(bQO;sm]5k3ZN[R3[sDQJ.P5B#_)sfxSXB,>oi' );
define( 'SECURE_AUTH_KEY',  '+rS8pskNYydspZ_d3l*6FJtn>}#Qh*tO]W-a:]y}`<W68I7*BS_HiX0S%g vRI0_' );
define( 'LOGGED_IN_KEY',    'eq(6F>?zm?Ktm`[;,!-s#QjK9Bm:BMoUaa+PgoLmvsXLE`<*bI-NlWXRXQMC$6x0' );
define( 'NONCE_KEY',        '`Ta=K5,Y^.8A>:z5Mnz~7{]osIzL:_2}:>-a0dMMxf,:.=yixAA894`ey?3A3):2' );
define( 'AUTH_SALT',        'NMS4f{ ]|@R<PwV~IsVkx:3`6Eu[*(tR,5CkM0Ug{Q#i~$O=,UlbdgDXu;7P$w|)' );
define( 'SECURE_AUTH_SALT', 'zC|?Lq;2tm^)<:W]acHF[$Z8KSXX| tN|:J,jTL3v~g?gz /~mgWc&~nw}b:z 35' );
define( 'LOGGED_IN_SALT',   '2=M5p o&{st<q{]=1IMGL#NNL@ fS^@@tqvr*g_DaMM5q.,{$${i]B <h(zx,R|&' );
define( 'NONCE_SALT',       'fdBXLCJ6F4aHI p*diV;qBen})@6#D.h~1)/|}>yYi$nT%N0H39YN}|@e[3>qtPe' );

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
