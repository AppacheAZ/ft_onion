docker stop pruebanginx
docker rm pruebanginx
docker build -t prueba .
docker run -d -p 80:80 -p 4242:22 --name pruebanginx prueba
docker exec -it pruebanginx /bin/bash -c "cat /var/lib/tor/hidden_service/hostname"
