# Use a lightweight Nginx web server image based on Alpine Linux
FROM nginx:alpine

# Copy your local index.html into Nginx's public web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]