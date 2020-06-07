#!/bin/bash
#Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
echo "Cleaning up & Fetching PAC lists..."
mkdir -p ~/BLT/pac
cd ~/BLT/pac
rm -f pac-* *.pac
sleep 1
echo "Changed working directory and cleaned up old data. Now downloading new lists."
wget -nv -O 1.pac "https://ssl.bblck.me/blacklists/domain-list.txt"
wget -nv -O 2.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt"
wget -nv -O 3.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt"
wget -nv -O 4.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt"
wget -nv -O 5.pac "https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt"
wget -nv -O 6.pac "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=nohtml&showintro=0&mimetype=plaintext"
echo "Lists Downloaded. Now parsing..."
cat *.pac | sed "s/#.*$//" | sed "/^$/d" | sed "/^Site$/d" | sort | uniq -i > pac-uniq.txt
cp pac-uniq.txt pac-pre.txt
cp pac-pre.txt pac-pre2.txt
sed -i "s/^/*./" pac-pre.txt
cat pac-pre.txt pac-pre2.txt > pac-wew.txt
perl -i -pe 'chomp if eof' pac-wew.txt
sed "s/^/shExpMatch(host, '/" pac-wew.txt > pac-lad.txt
sed -i "s/$/') ||/" pac-lad.txt
sed "2r pac-lad.txt" < ~/BLT/parsing/pactemplate.txt > pac-done.js
sed -i "1s/^/\/\/ **** $(date)\n/" pac-done.js
perl -i -pe 'chomp if eof' pac-done.js
echo "Properly merged and formatted block lists into new PAC file."
# curl -T pac-done.js ftp://SERVER-AND-DIRECTORY-HERE --user USERNAME-HERE:PASSWORD-HERE
# echo "Successfully uploaded PAC to remote servers. We're done!"
sleep 1
rm -f *.pac *.txt
xdg-open ~/BLT/pac
exit
