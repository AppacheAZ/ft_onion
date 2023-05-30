# Start with a base image
FROM debian:latest

RUN apt-get update && apt-get install -y nginx tor

# Set the working directory
#WORKDIR /app

# Copy the content into the container
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY html /var/www/html
COPY torrc /etc/tor

EXPOSE 80

#CMD ["nginx", "-g", "daemon off;"]

# Start Tor and Nginx
CMD service tor start && nginx -g "daemon off;"

#apt update
#apt install tor