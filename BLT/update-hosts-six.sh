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
wget -nv -O hosts.1 "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"
echo "Downloaded hosts list 1"
wget -nv -O hosts.2 "https://winhelp2002.mvps.org/hosts.txt"
echo "Downloaded hosts list 2"
wget -nv -O hosts.3 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/MD-ID-H-Fork.txt"
echo "Downloaded hosts list 3"
wget -nv -O hosts.4 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_desktop-hosts.txt"
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
wget -nv -O hosts.10 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/piperun-hosts.txt"
echo "Downloaded hosts list 10"
wget -nv -O hosts.11 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/disconnect_consolidated.txt"
echo "Downloaded hosts list 11"
wget -nv -O hosts.12 "https://gitlab.com/curben/urlhaus-filter/raw/master/urlhaus-filter-hosts-online.txt"
echo "Downloaded hosts list 12"
wget -nv -O hosts.13 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/AdditionalSupplementaryHosts.txt"
echo "Downloaded hosts list 13"
echo "Parsing data..."
cat hosts.* | sort | uniq | sed "s/#.*$//" | sed "/[[:space:]]*#/d" | sed "/[[:blank:]]*#/d" | sed "s/\t/ /g" | sed "s/^127.0.0.1/0.0.0.0/g" | sed "s/^::1/0.0.0.0/g" | sed "s/^::/0.0.0.0/g" | sed "s/[[:space:]]*$//" | sed "s/[[:blank:]]*$//" | sed "s/[[:space:]]\+/ /g" | sed "/^0.0.0.0 /! s/^/0.0.0.0 /" | sed -e '/^0\.0\.0\.0[ ].*[ ].*.$/d' | sed "s/\(.*\)/\L\1/" > hosts-pre.final
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
perl -i -pe 'chomp if eof' hosts.final
echo "Successfully merged hosts lists!"
sed -i -e "s/^127.0.0.1/::/g" -e "s/^::1/::/g" -e "s/^0.0.0.0/::/g" -e "/^:: /! s/^/:: /" hosts.final
sed '35r hosts.final' < ~/BLT/parsing/newhosts-template-six.txt > newhosts.txt
sed -i "23s|DAYBONGODATEREPLACE|$(date -u +%0D~%0T)|" newhosts.txt
perl -i -pe 'chomp if eof' newhosts.txt
echo "Successfully cleaned up and formatted hosts file! Prompting for password to make backup of and overwrite /etc/hosts..."
sudo cp /etc/hosts hostsbackup.txt
sudo cp newhosts.txt /etc/hosts
rm -f hosts.* *.final *.hosts
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
