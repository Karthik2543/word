<?php
define( 'DB_NAME', 'wordpress-db' ); // Replace with your database name
define( 'DB_USER', 'admin' ); // Replace with your RDS username
define( 'DB_PASSWORD', 'Bitcot$2543' ); // Replace with your RDS password
define( 'DB_HOST','wordpress-db.cduw2kik48va.us-east-1.rds.amazonaws.com' ); // RDS endpoint

// WordPress Database Table prefix
$table_prefix = 'wp_';

// Debugging mode
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

// Absolute path to the WordPress directory
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

// Sets up WordPress vars and included files
require_once ABSPATH . 'wp-settings.php';

