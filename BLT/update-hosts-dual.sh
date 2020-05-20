#!/bin/bash
#Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
echo "Cleaning up & Fetching hosts lists..."
mkdir -p ~/BLT/hosts
cd ~/BLT/hosts
rm -f hosts.*
rm -f *.final
rm -f *.hosts
rm -f newhosts.txt
sleep 2
wget -nv -O hosts.1 "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"
echo "Downloaded hosts list 1"
wget -nv -O hosts.2 "http://winhelp2002.mvps.org/hosts.txt"
echo "Downloaded hosts list 2"
wget -nv -O hosts.3 "http://www.malwaredomainlist.com/hostslist/hosts.txt"
echo "Downloaded hosts list 3"
wget -nv -O hosts.4 "https://block.energized.pro/spark/formats/hosts.txt"
echo "Downloaded hosts list 4"
wget -nv -O hosts.5 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/spam_404-hosts.txt"
echo "Downloaded hosts list 5"
wget -nv -O hosts.6 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_mobile-hosts.txt"
echo "Downloaded hosts list 6"
wget -nv -O hosts.7 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/SBBTYZ-IPv4.txt"
echo "Downloaded hosts list 7"
wget -nv -O hosts.8 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/easylist_desktop-hosts.txt"
echo "Downloaded hosts list 8"
wget -nv -O hosts.9 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_dns-hosts.txt"
echo "Downloaded hosts list 9"
echo "Parsing data..."
cat hosts.* > hosts-cat.final
pcregrep -v -f ~/BLT/parsing/hostpatterns.dat hosts-cat.final > hosts-pre.final
sort hosts-pre.final | uniq > uniq-hosts.final
sed -i "s/#.*$//" uniq-hosts.final
sed -i "/[[:space:]]*#/d" uniq-hosts.final
sed -i "/[[:blank:]]*#/d" uniq-hosts.final
sed -i "s/\t/ /g" uniq-hosts.final
sed -i "s/^127.0.0.1/0.0.0.0/g" uniq-hosts.final
sed -i "s/^::1/0.0.0.0/g" uniq-hosts.final
sed -i "s/^::/0.0.0.0/g" uniq-hosts.final
sed -i "s/[[:space:]]*$//" uniq-hosts.final
sed -i "s/[[:blank:]]*$//" uniq-hosts.final
sed -i "s/[[:space:]]\+/ /g" uniq-hosts.final
sed -i "/^0.0.0.0 /! s/^/0.0.0.0 /" uniq-hosts.final
#Optional routine to check for Unicode IDN domain entries and convert to Punycode if necessary
#if [[ $(grep -P -n "[^\x00-\x7F]" uniq-hosts.final) ]]; then
#    echo "Non-ASCII strings found in domains. Converting to Punycode..."
#    grep -P -v "[^\x00-\x7F]" uniq-hosts.final | sed "s/0.0.0.0 //" > uniq-hosts-na.final
#    sleep 2
#    grep -P "[^\x00-\x7F]" uniq-hosts.final | sed "s/0.0.0.0 //" | idn >> uniq-hosts-na.final
#    sleep 2
#    sed -i "/^0.0.0.0 /! s/^/0.0.0.0 /" uniq-hosts-na.final
#    rm -f uniq-hosts.final && mv uniq-hosts-na.final uniq-hosts.final
#else
#    echo "All domains are valid ASCII strings. Continuing compilation of lists..."
#fi
#End of Unicode IDN domain to Punycode conversion routine
sed -i '/0.0.0.0 device9.com/d' uniq-hosts.final
sed -i '/\^\document/d' uniq-hosts.final
sed -i '/\^/d' uniq-hosts.final
sed -i '/\*/d' uniq-hosts.final
sed -i '/\?/d' uniq-hosts.final
sed -i '/\//d' uniq-hosts.final
sed -i '/@/d' uniq-hosts.final
sed -i '/!/d' uniq-hosts.final
sed -i '/|/d' uniq-hosts.final
sed -i '/:/d' uniq-hosts.final
sed -i '/~/d' uniq-hosts.final
sed -i '/,/d' uniq-hosts.final
sed -i '/=/d' uniq-hosts.final
sed -i -e 's/\(.*\)/\L\1/' uniq-hosts.final
sort uniq-hosts.final | uniq -i > final-uniq.hosts
pcregrep -v -f ~/BLT/parsing/hostpatterns.dat final-uniq.hosts > hosts.final
echo "Successfully merged hosts lists!"
sed 's/^0.0.0.0/::/g' hosts.final > hostsIPv6.final
perl -i -pe 'chomp if eof' hosts.final
perl -i -pe 'chomp if eof' hostsIPv6.final
sed '38r hostsIPv6.final' < ~/BLT/parsing/newhosts-template-dual.txt > newhosts-template-both.txt
sed '35r hosts.final' < newhosts-template-both.txt > newhosts.txt
sed -i "23s|DAYBONGODATEREPLACE|$(date)|" newhosts.txt
perl -i -pe 'chomp if eof' newhosts.txt
echo "Successfully cleaned up and formatted hosts file! Prompting for password to make backup of and overwrite /etc/hosts..."
sudo cp /etc/hosts hostsbackup.txt
sudo cp newhosts.txt /etc/hosts
sleep 2
rm -f hosts.*
rm -f *.final
rm -f *.hosts
rm -f newhosts-template-both.txt
echo "Your hosts file has been updated!"
xdg-open ~/BLT/hosts
exit
