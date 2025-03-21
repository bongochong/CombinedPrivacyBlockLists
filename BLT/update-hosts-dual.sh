#!/bin/bash
#Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
	read -r -p "Are you ready to update your hosts file? [y/N] " response
	if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
echo "Cleaning up & Fetching hosts lists..."
mkdir -p ~/BLT/hosts
cd ~/BLT/hosts
rm -f hosts.* *.final *.hosts newhosts.txt
echo "Changed working directory and cleaned up old data. Now downloading new lists."
wget -nv -O hosts.1 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/Mirrors/yoyo.hosts"
wget -nv -O hosts.2 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/Mirrors/mvps.hosts"
wget -nv -O hosts.3 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/MD-ID-H-Fork.txt"
wget -nv -O hosts.4 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_desktop-hosts.txt"
wget -nv -O hosts.5 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/spam_404-hosts.txt"
wget -nv -O hosts.6 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_mobile-hosts.txt"
wget -nv -O hosts.7 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/SBBTYZ-IPv4.txt"
wget -nv -O hosts.8 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/easylist_desktop-hosts.txt"
wget -nv -O hosts.9 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_dns-hosts.txt"
wget -nv -O hosts.10 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/piperun-hosts.txt"
wget -nv -O hosts.11 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/disconnect_consolidated.txt"
wget -nv -O hosts.12 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/Mirrors/urlhausonline.hosts"
wget -nv -O hosts.13 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/AdditionalSupplementaryHosts.txt"
echo "Lists Downloaded. Parsing data..."
sed -i '$a\' hosts.*
cat hosts.* | sort | uniq | sed "s/#.*$//" | sed "s/\s\.*$//" | sed "/[[:space:]]*#/d" | sed "/[[:blank:]]*#/d" | sed "s/\t\+/ /g" | sed "s/^127.0.0.1/0.0.0.0/g" | sed "s/^::1/0.0.0.0/g" | sed "s/^::/0.0.0.0/g" | sed "s/[[:space:]]*$//" | sed "s/[[:blank:]]*$//" | sed "s/[[:space:]]\+/ /g" | sed "/^0.0.0.0 /! s/^/0.0.0.0 /" | sed -e '/^0\.0\.0\.0[ ].*[ ].*.$/d' | sed "s/\(.*\)/\L\1/" > hosts-pre.final
pcregrep -v -f ~/BLT/parsing/hostpatterns.dat hosts-pre.final > uniq-hosts.final
#Routine to check for and convert Unicode IDNs to Punycode
if [[ $(grep -P -n "[^\x00-\x7F]" uniq-hosts.final) ]]; then
    echo "Non-ASCII strings found in domains. Converting to Punycode..."
    grep -P -v "[^\x00-\x7F]" uniq-hosts.final | sed "s/0.0.0.0 //" > uniq-hosts-na.final
    grep -P "[^\x00-\x7F]" uniq-hosts.final | sed "s/0.0.0.0 //" | idn2 >> uniq-hosts-na.final
    sed -i "/^0.0.0.0 /! s/^/0.0.0.0 /" uniq-hosts-na.final
    rm -f uniq-hosts.final && mv uniq-hosts-na.final uniq-hosts.final
else
    echo "All domains are valid ASCII strings. Continuing compilation of lists..."
fi
#End of Unicode IDN to Punycode conversion routine
sed -i -e '/\^\document/d' -e '/\^/d' -e '/\*/d' -e '/\?/d' -e '/\//d' -e '/@/d' -e '/!/d' -e '/|/d' -e '/:/d' -e '/~/d' -e '/,/d' -e '/=/d' -e "/\[/d" -e "/\]/d" -e '/\//d' uniq-hosts.final
sort -f uniq-hosts.final | uniq -i > final-uniq.hosts
pcregrep -f ~/BLT/parsing/tld-filter.dat final-uniq.hosts > hosts.final
sed "s/^0.0.0.0/::/g" hosts.final > hostsIPv6.final
perl -i -pe 'chomp if eof' hosts.final
perl -i -pe 'chomp if eof' hostsIPv6.final
echo "Successfully merged hosts lists!"
sed '38r hostsIPv6.final' < ~/BLT/parsing/newhosts-template-dual.txt > newhosts-template-both.txt
sed '35r hosts.final' < newhosts-template-both.txt > newhosts.txt
sed -i "23s|DAYBONGODATEREPLACE|$(date -u +%0D~%0T)|" newhosts.txt
perl -i -pe 'chomp if eof' newhosts.txt
echo "Successfully cleaned up and formatted hosts file! Prompting for password to make backup of and overwrite /etc/hosts..."
sudo cp /etc/hosts hostsbackup.txt
sudo cp newhosts.txt /etc/hosts
rm -f hosts.* *.final *.hosts newhosts-template-both.txt
echo "Your hosts file has been updated!"
echo "~---_---_---~"
ls -lh ~/BLT/hosts
echo "~---_---_---~"
hostCount=$(grep -w "#" -c -v /etc/hosts)
echo "Your current hosts file contains $hostCount unique entries..."
echo "~---_---_---~"
exit
	else
	echo "Alright, goodbye!"
	fi
exit
