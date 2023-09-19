# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Copy your index.html file to the default Nginx web root directory
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow incoming HTTP requests
EXPOSE 80

# Start the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]