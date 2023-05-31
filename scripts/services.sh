service tor start && nginx -g "daemon off;"
echo '[+] Starting ssh'
mkdir /run/sshd
service ssh start
service ssh restart
sleep 5
echo "Onion service URL: http://$(cat /var/lib/tor/hidden_service/hostname)"
