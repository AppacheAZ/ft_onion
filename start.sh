#cat ~/.ssh/id_rsa.pub > scripts/id_rsa.pub
docker stop pruebanginx
docker rm pruebanginx
docker build -t prueba .
docker run -d -p 80:80 -p 4242:4242 --name pruebanginx prueba
echo "\n \n The Onion URL of the page is:"
onion_url=$(docker exec -it pruebanginx /bin/bash -c "cat /var/lib/tor/hidden_service/hostname")
echo "\033[35m$onion_url\033[0m"
echo "\n"
docker exec -it pruebanginx /bin/bash -c "service ssh restart"
echo "To connect to the server using SSH the following command:\033[0m" "\033[36mssh -i scripts/id_rsa marco@localhost -p 4242"


