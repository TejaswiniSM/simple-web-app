# Use official Nginx image for serving static files
FROM nginx:alpine

# Copy your HTML file to Nginx default folder
COPY index.html /usr/share/nginx/html/index.html

# Expose default Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
