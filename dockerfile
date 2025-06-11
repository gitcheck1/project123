# Use Nginx as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static assets
RUN rm -rf ./*

# Copy your project files to the container
COPY . .

# Expose port 80
EXPOSE 80

# No need to override the default Nginx CMD
# It will automatically serve the static content

