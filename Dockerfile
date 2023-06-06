# Start with a base image
FROM nginx:latest

RUN apt-get update && apt-get install \
 -y nginx tor openssh-server 

# Create a SSH user
RUN useradd -d /home/marco -s /bin/bash -g root -G sudo -u 1000 marco

# Copy the SSH keys previously generated
COPY /scripts/id_rsa.pub /home/marco/.ssh/authorized_keys
COPY /sshd_config /etc/ssh/sshd_config


# Copy the config files into the container
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY html /var/www/html
COPY torrc /etc/tor

EXPOSE 80
EXPOSE 4242

# Start Tor and Nginx services using the services script
# Start the SSH service
COPY /scripts/services.sh services.sh
RUN chmod 700 services.sh
RUN service ssh start
CMD ./services.sh