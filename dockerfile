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
EXPOSE 4242

#CMD ["nginx", "-g", "daemon off;"]

# Start Tor and Nginx
#CMD service tor start && nginx -g "daemon off;"

# Configure
COPY /scripts/services.sh services.sh
RUN chmod 700 services.sh
CMD ./services.sh

#apt update
#apt install tor