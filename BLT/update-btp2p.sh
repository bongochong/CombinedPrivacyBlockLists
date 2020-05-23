#!/bin/bash
#Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
echo "Cleaning up & Fetching P2P lists..."
mkdir -p ~/BLT/btp2p
cd ~/BLT/btp2p
rm -f level1BT.7z
rm -f bt_level1.p2p
rm -f level2BT.7z
rm -f bt_level2.p2p
rm -f combined.txt
rm -f combined-final.p2p
sleep 2
wget -nv -O level1BT.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=p2p&archiveformat=7z"
wget -nv -O level2BT.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=p2p&archiveformat=7z"
echo "Downloaded blocklists."
7z e level1BT.7z
7z e level2BT.7z
echo "Extracted blocklists from archives."
find . -name 'ydxerpxkpcfqjaybcssw.txt' -exec mv {} bt_level1.p2p \;
find . -name 'gyisgnzbhppbvsphucsw.txt' -exec mv {} bt_level2.p2p \;
cat *.p2p > combined.txt
sed -i "s/amp;//g" combined.txt
sleep 2
sort combined.txt | uniq -i > combined-final.p2p
sleep 2
perl -pi -e '$_ = "" if ( $. == 1 );' combined-final.p2p
sleep 2
sed -i "/^#/d" combined-final.p2p
sed -i "/^[[:space:]]*$/d" combined-final.p2p
perl -i -pe 'chomp if eof' combined-final.p2p
echo "Appended proper file extension to blocklists. Combined, sorted, and de-duped. Your BitTorrent blocklist has been updated."
sleep 2
rm -f level1BT.7z
rm -f bt_level1.p2p
rm -f level2BT.7z
rm -f bt_level2.p2p
rm -f combined.txt
xdg-open ~/BLT/btp2p
exit
