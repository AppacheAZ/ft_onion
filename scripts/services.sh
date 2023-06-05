service tor start && nginx -g "daemon off;"
echo '[+] Starting ssh'

echo "Onion service URL: http://$(cat /var/lib/tor/hidden_service/hostname)"
