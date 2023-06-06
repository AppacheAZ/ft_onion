#!/bin/bash

# This script create a container with the name 'pruebanginx' and run it
# Stract the .onion URL from the container and show it
# Start the SSH service and show the command to connect to the server

docker stop pruebanginx
docker rm pruebanginx
docker build -t prueba .
docker run -d -p 80:80 -p 4242:4242 --name pruebanginx prueba

echo "\n \n \n \n \n THE NEXT CONTAINER: TOR WEB SERVER\nYou have just created and launched a Docker container hosting a Tor web server \033[35m\n \n"
cat << "EOF"
888                   
888                   
888                   
888888 .d88b. 888d888 
888   d88""88b888P"   
888   888  888888     
Y88b. Y88..88P888     
 "Y888 "Y88P" 888
EOF

echo "\n \n \033[0mThe Onion URL of the page is:"
onion_url=$(docker exec -it pruebanginx /bin/bash -c "cat /var/lib/tor/hidden_service/hostname")
echo "\033[35m$onion_url\033[0m"
echo "\n"
docker exec -it pruebanginx /bin/bash -c "service ssh restart"
echo "To connect to the server using SSH the following command:\033[0m" "\033[36mssh -i scripts/id_rsa marco@localhost -p 4242"


