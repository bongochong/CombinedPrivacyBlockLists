#!/bin/bash
#Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
echo "Cleaning up & Fetching host lists..."
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
wget -nv -O hosts.4 "https://raw.githubusercontent.com/badmojr/1Hosts/master/mini/hosts.txt"
echo "Downloaded hosts list 4"
wget -nv -O hosts.5 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/spam_404-hosts.txt"
echo "Downloaded hosts list 5"
wget -nv -O hosts.6 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_mobile-hosts.txt"
echo "Downloaded hosts list 6"
wget -nv -O hosts.7 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/SBBTYZ-IPv4.txt"
echo "Downloaded hosts list 7"
wget -nv -O hosts.8 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/easylist_desktop-hosts.txt"
echo "Downloaded hosts list 8"
# wget -nv -O hosts.9 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/NSA-BlockList-IPv4-Light.txt"
# echo "Downloaded hosts list 9"
cat hosts.* > hosts-cat.final
pcregrep -v -f ~/BLT/parsing/hostpatterns.dat hosts-cat.final > hosts-pre.final
sort hosts-pre.final | uniq > uniq-hosts.final
sed -i -e "s/#.*$//" uniq-hosts.final
sed -i -e "/[[:space:]]*#/d" uniq-hosts.final
sed -i -e "/[[:blank:]]*#/d" uniq-hosts.final
sed -i "s/\t/ /g" uniq-hosts.final
sed -i "s/^127.0.0.1/0.0.0.0/g" uniq-hosts.final
sed -i "s/^::1/0.0.0.0/g" uniq-hosts.final
sed -i "s/^::/0.0.0.0/g" uniq-hosts.final
sed -i -e "s/[[:space:]]*$//" uniq-hosts.final
sed -i -e "s/[[:blank:]]*$//" uniq-hosts.final
sed -i -e "s/[[:space:]]\+/ /g" uniq-hosts.final
sed -i -e "/^0.0.0.0 /! s/^/0.0.0.0 /" uniq-hosts.final
sed -i '/0.0.0.0 device9.com/d' uniq-hosts.final
sed -i '/\^\document/d' uniq-hosts.final
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
