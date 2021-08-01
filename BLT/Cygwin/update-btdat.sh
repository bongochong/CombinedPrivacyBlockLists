#!/bin/bash
#Cygwin Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
	read -r -p "Are you ready to update your peer-to-peer block list? [y/N] " response
	if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
echo "Cleaning up & Fetching DAT lists..."
mkdir -p ~/BLT/btdat
cd ~/BLT/btdat
rm -f level1BTdat.7z bt_level1.dat bpeersBTdat.7z bt_bpeers.dat combined-final-win.dat
wget -nv -O level1BTdat.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=dat&archiveformat=7z"
wget -nv -O bpeersBTdat.7z "http://list.iblocklist.com/?list=cwworuawihqvocglcoss&fileformat=dat&archiveformat=7z"
echo "Downloaded blocklists."
7z e level1BTdat.7z
7z e bpeersBTdat.7z
echo "Extracted blocklists from archives."
find . -name 'ydxerpxkpcfqjaybcssw.txt' -exec mv {} bt_level1.dat \;
find . -name 'cwworuawihqvocglcoss.txt' -exec mv {} bt_bpeers.dat \;
cat *.dat | sed "s/amp;//g" | sed "s/\&//g" | tr -d "\200-\377" | sort -f | uniq -i > combined-final-win.dat
perl -pi -e '$_ = "" if ( $. == 1 );' combined-final-win.dat
sed -i -e "/^#/d" -e "/^[[:space:]]*$/d" combined-final-win.dat
perl -i -pe 'chomp if eof' combined-final-win.dat
echo "Appended proper file extension to blocklists. Combined, sorted, and de-duped. Your BitTorrent blocklist has been updated."
rm -f level1BTdat.7z bt_level1.dat bpeersBTdat.7z bt_bpeers.dat
echo "~---_---_---~"
ls -lh ~/BLT/btdat
echo "~---_---_---~"
datCount=$(cat ~/BLT/btdat/combined-final-win.dat | wc -l)
echo "Your current P2P block list contains $datCount unique entries..."
echo "~---_---_---~"
exit
	else
	echo "Alright, goodbye!"
	fi
exit
