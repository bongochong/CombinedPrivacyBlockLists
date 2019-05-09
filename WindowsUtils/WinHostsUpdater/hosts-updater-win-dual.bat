cd %~dp0
@echo off
del "hosts.bak"
rename HOSTS hosts.bak
cd bin
rm hosts.*
rm sorted-hosts.txt
rm sorted-hosts6.txt
rm hosts.final
rm hosts6.final
rm hosts-dual.txt
rm hosts4
rm hosts6
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
sed "s/^0.0.0.0/::/g" hosts.final > hosts6.final
sort hosts.final > sorted-hosts.txt
sort hosts6.final > sorted-hosts6.txt
cscript optimizer-pre.js
timeout 5
cscript optimizer6-pre.js
timeout 5
cat hosts4 hosts6 > hosts-dual.txt
cp hosts-dual.txt ..
cd ..
rename hosts-dual.txt HOSTS
copy /Y HOSTS %SystemDrive%\Windows\System32\Drivers\etc\HOSTS
ipconfig /flushdns
@echo off
echo Done!
pause
