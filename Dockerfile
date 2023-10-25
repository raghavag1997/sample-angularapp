# Use an official Apache web server image as the base image
FROM httpd:2.4

# Copy the built Angular application to the Apache web server's document root
COPY ./dist/my-app /usr/local/apache2/htdocs

# Expose the port that Apache listens on (default is 80)
EXPOSE 80

# Start the Apache web server in the foreground
CMD ["httpd-foreground"]
