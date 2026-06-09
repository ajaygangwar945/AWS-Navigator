# Use the lightweight Nginx Alpine base image
FROM nginx:alpine

# Set the working directory to Nginx's public HTML folder
WORKDIR /usr/share/nginx/html

# Copy the files into the working directory (dot refers to /usr/share/nginx/html)
COPY . .

# Expose port 80 for web traffic
EXPOSE 80

# Command to run Nginx in the foreground so the container stays alive
CMD ["nginx","-g","daemon off;"]

