# Use an official PHP runtime as a parent image
FROM php:apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

RUN docker-php-ext-install mysqli

# Copy the current directory contents into the container at /var/www/html
COPY . .

# Install any dependencies your PHP application might need
# For example, if you use MySQL, you might need the mysqli extension
# RUN docker-php-ext-install mysqli

# Set environment variables for MySQL connection (replace with your actual values)
ENV DB_SERVER=test
ENV DB_USERNAME=test
ENV DB_PASSWORD=test12345
ENV DB_DATABASE=test

# Expose port 80 for the webserver to listen on
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
