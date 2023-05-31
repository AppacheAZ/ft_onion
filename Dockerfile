# Start with a base image
FROM debian:latest

RUN apt-get update && apt-get install -y nginx tor

# Create a SSH user
RUN groupadd sshgroup && \
	useradd -ms /bin/bash -g sshgroup sshuser && \
	mkdir -p /home/sshuser/.ssh
COPY ./scripts/id_rsa.pub /home/sshuser/.ssh/authorized_keys
RUN chown sshuser:sshgroup /home/sshuser/.ssh/authorized_keys && \
	chmod 600 /home/sshuser/.ssh/authorized_keys
COPY ./sshd_config 	/etc/ssh

# Copy the content into the container
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY html /var/www/html
COPY torrc /etc/tor

EXPOSE 80
EXPOSE 4242

# Start Tor and Nginx

# Configure
COPY /scripts/services.sh services.sh
RUN chmod 700 services.sh
CMD ./services.sh