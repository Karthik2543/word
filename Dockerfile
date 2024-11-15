# Use the official PHP Apache base image
FROM php:8.1-apache

# Set environment variables for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Update repository and install required packages
RUN apt-get update && apt-get install -y \
    ghostscript \
    unzip \
    curl \
    && apt-get clean

# Install and enable the mysqli PHP extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Enable Apache rewrite module
RUN a2enmod rewrite

# Set the working directory to Apache's document root
WORKDIR /var/www/html

# Download and extract WordPress
RUN curl -o wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
    tar -xzf wordpress.tar.gz --strip-components=1 && \
    rm wordpress.tar.gz

# Set permissions for WordPress files
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Inject custom wp-config.php
COPY wp-config.php /var/www/html/wp-config.php

# Expose port 80 for web traffic
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]

