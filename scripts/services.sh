service tor start && nginx -g "daemon off;"
service ssh start
sleep 5
echo "Onion service URL: http://$(cat /var/lib/tor/hiddenservicename/hostname)"
