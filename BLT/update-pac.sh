#!/bin/bash
#Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
	read -r -p "Are you ready to update your proxy auto-configuration block list? [y/N] " response
	if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
echo "Cleaning up & Fetching PAC lists..."
mkdir -p ~/BLT/pac
cd ~/BLT/pac
rm -f pac-* *.pac
echo "Changed working directory and cleaned up old data. Now downloading new lists."
wget -nv -O 1.pac "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/MD-ID-Fork.txt"
wget -nv -O 2.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt"
wget -nv -O 3.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt"
wget -nv -O 4.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt"
wget -nv -O 5.pac "https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt"
wget -nv -O 6.pac "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=nohtml&showintro=0&mimetype=plaintext"
wget -nv -O 7.pac "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/piperun-hosts.txt"
echo "Lists Downloaded. Now parsing..."
sed -e '$s/$/\n/' -s *.pac | sed "s/#.*$//" | sed "/^$/d" | sed "/^Site$/d" | sed "s/\(.*\)/\L\1/" | pcregrep -f ~/BLT/parsing/tld-filter.dat | sed "s/^127.0.0.1 //g" | sed "s/^0.0.0.0 //g" | sed "s/^::1 //g" | sed "s/^:: //g" | pcregrep -v -f ~/BLT/parsing/pacpatterns.dat | sed "/@/d" | sed "/ /d" | sed "/\[/d" | sed "/\]/d" | sed "/\//d" | sort -f | uniq -i > pac-uniq.txt
cp pac-uniq.txt pac-pre.txt
cp pac-pre.txt pac-pre2.txt
sed -i "s/^/*./" pac-pre.txt
cat pac-pre.txt pac-pre2.txt > pac-wew.txt
perl -i -pe 'chomp if eof' pac-wew.txt
sed -e "s/^/shExpMatch(host, '/" -e "s/$/') ||/" pac-wew.txt > pac-lad.txt
sed "2r pac-lad.txt" < ~/BLT/parsing/pactemplate.txt > pac-done.js
sed -i "1s/^/\/\/ **** $(date -u)\n/" pac-done.js
perl -i -pe 'chomp if eof' pac-done.js
echo "Properly merged and formatted block lists into new PAC file."
# curl -T pac-done.js ftp://SERVER-AND-DIRECTORY-HERE --user USERNAME-HERE:PASSWORD-HERE
# echo "Successfully uploaded PAC to remote servers. We're done!"
rm -f *.pac *.txt
echo "~---_---_---~"
ls -lh ~/BLT/pac
echo "~---_---_---~"
paCount=$(grep -w "shExpMatch" -c ~/BLT/pac/pac-done.js)
echo "Your current PAC file contains $paCount unique entries..."
echo "~---_---_---~"
exit
	else
	echo "Alright, goodbye!"
	fi
exit
