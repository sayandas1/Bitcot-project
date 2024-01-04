# Use an official PHP runtime as a parent image
FROM php:8.2-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Expose port 80 for the web server
EXPOSE 80

# Switch to a non-root user (replace 'www-data' with an appropriate user)
USER www-data

# CMD to start Apache in the foreground
CMD ["apache2-foreground"]
