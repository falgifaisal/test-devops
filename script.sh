/usr/sbin/iptables -I INPUT -p tcp --dport 22 -m state --state NEW -m recent --set

/usr/sbin/iptables -I INPUT -p tcp --dport 22 -m state --state NEW -m recent  --update --seconds 1 --hitcount 40 -j DROP
