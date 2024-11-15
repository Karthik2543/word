#!/bin/bash

# Start MySQL service
service mysql start

# Restart Apache to apply configurations
service apache2 restart

# Keep the container running in the foreground
exec apachectl -D FOREGROUND

