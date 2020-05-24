#!/bin/bash
#Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
echo "Cleaning up & Fetching DAT lists..."
mkdir -p ~/BLT/btdat
cd ~/BLT/btdat
rm -f level1BTdat.7z bt_level1.dat level2BTdat.7z bt_level2.dat combined-win.txt combined-final-win.dat
wget -nv -O level1BTdat.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=dat&archiveformat=7z"
wget -nv -O level2BTdat.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=dat&archiveformat=7z"
echo "Downloaded blocklists."
7z e level1BTdat.7z
sleep 1
7z e level2BTdat.7z
sleep 1
echo "Extracted blocklists from archives."
find . -name 'ydxerpxkpcfqjaybcssw.txt' -exec mv {} bt_level1.dat \;
find . -name 'gyisgnzbhppbvsphucsw.txt' -exec mv {} bt_level2.dat \;
cat *.dat | sed "s/amp;//g" > combined-win.txt
sort combined-win.txt | uniq -i > combined-final-win.dat
sleep 1
perl -pi -e '$_ = "" if ( $. == 1 );' combined-final-win.dat
sed -i -e "/^#/d" -e "/^[[:space:]]*$/d" combined-final-win.dat
perl -i -pe 'chomp if eof' combined-final-win.dat
echo "Appended proper file extension to blocklists. Combined, sorted, and de-duped. Your BitTorrent blocklist has been updated."
rm -f level1BTdat.7z bt_level1.dat level2BTdat.7z bt_level2.dat combined-win.txt
xdg-open ~/BLT/btdat
exit
