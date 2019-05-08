cd C:\WindowsUtils\WinHostsUpdater
@echo off
del "hosts.bak"
del "final-hosts.txt"
rename HOSTS hosts.bak
cd bin
rm hosts.*
rm final-hosts.txt
@echo on
wget -nv -O hosts.1 "http://winhelp2002.mvps.org/hosts.txt"
wget -nv -O hosts.2 "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"
wget -nv -O hosts.3 "https://www.malwaredomainlist.com/hostslist/hosts.txt"
wget -nv -O hosts.4 "https://hosts-file.net/ad_servers.txt"
wget -nv -O hosts.5 "https://hosts-file.net/exp.txt"
wget -nv -O hosts.6 "https://adaway.org/hosts.txt"
wget -nv -O hosts.7 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/SBBTYZ-IPv4.txt"
wget -nv -O hosts.8 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/Device9domains-IPv4.txt"
java -cp "MergeHosts.jar" com.ri.hosts.MergeHosts
sed -i "/localhost/d" hosts.final
sed -i "s/^127.0.0.1/0.0.0.0/g" hosts.final
sort hosts.final > sorted-hosts.txt
mv sorted-hosts.txt final-hosts.txt
cp final-hosts.txt ..
cd ..
cscript optimizer.js
timeout 10
copy /Y HOSTS C:\Windows\System32\Drivers\etc\HOSTS
ipconfig /flushdns
pause
