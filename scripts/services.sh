service tor start && nginx -g "daemon off;"
echo "Onion service URL: http://$(cat /var/lib/tor/hiddenservicename/hostname)"
