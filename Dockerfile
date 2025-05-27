# Use the official PHP image with Apache
FROM php:8.2-apache

# Copy your PHP files into the Apache server's web root
COPY index.php /var/www/html/

# Expose port 80 to access the website
EXPOSE 80
