#!/bin/bash
#Cygwin Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
echo "Concatenating lists of IP addresses..."
mkdir -p ~/BLT/ipblck
cd ~/BLT/ipblck
curl -s "https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/dshield.netset" | sed '$a\' | sed '/#/d' | sed '/:/d' > ipadump.txt
curl -s "https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/dshield_7d.netset" | sed '$a\' | sed '/#/d' | sed '/:/d' >> ipadump.txt
curl -s "https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/dshield_30d.netset" | sed '$a\' | sed '/#/d' | sed '/:/d' >> ipadump.txt
curl -s "https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/spamhaus_drop.netset" | sed '$a\' | sed '/#/d' | sed '/:/d' >> ipadump.txt
curl -s "https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/spamhaus_edrop.netset" | sed '$a\' | sed '/#/d' | sed '/:/d' >> ipadump.txt
curl -s "https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/blocklist_de_ssh.ipset" | sed '$a\' | sed '/#/d' | sed '/:/d' >> ipadump.txt
curl -s "https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/bruteforceblocker.ipset" | sed '$a\' | sed '/#/d' | sed '/:/d' >> ipadump.txt
curl -s "https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/blocklist_de_bruteforce.ipset" | sed '$a\' | sed '/#/d' | sed '/:/d' >> ipadump.txt
curl -s "https://pgl.yoyo.org/adservers/iplist.php?ipformat=plain&showintro=0&mimetype=plaintext" | sed '$a\' | sed '/#/d' | sed '/:/d' >> ipadump.txt
echo "Extracting, formatting, and aggregating valid entries..."
cat ipadump.txt | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}(/[0-9]|/[0-9][0-9])?' | sed '/\/[0-9]\+$/! s|$|/32|' | sort -u | aggregate -qt > ipablock.cidr
perl -i -pe 'chomp if eof' ipablock.cidr
echo "Completed generation of CIDR block list!"
read -r -p "Would you like to create block lists for your file-sharing applications now? [y/N] " response
	if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
echo "Let us begin. Converting addresses to p2p and dat format block lists..."
cat ipablock.cidr | sipcalc - | grep -i "network range" | sed -e 's/^[^0-9]*//' -e 's/\s-\s/-/g' -e 's/^/CPBL:/' > btblock.p2p
perl -i -pe 'chomp if eof' btblock.p2p
cat btblock.p2p | grep -i cpbl | sed -e 's/CPBL://g' -e 's/-/\./g' | awk -F. '{printf "%03d.%03d.%03d.%03d.%03d.%03d.%03d.%03d\n",$1,$2,$3,$4,$5,$6,$7,$8}' | sed -e 's/\./ - /4' -e 's/$/ , 100 , CPBL/g' > btblock.dat
perl -i -pe 'chomp if eof' btblock.dat
rm -f ipadump.txt
echo "All done!"
exit
	else
	echo "Okay! Goodbye."
	fi
exit
