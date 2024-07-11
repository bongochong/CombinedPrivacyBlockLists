#!/bin/bash
#Block List Tools (http://shorl.com/fovogretopiga)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
	read -r -p "Are you ready to update your peer-to-peer block list? [y/N] " response
	if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
echo "Cleaning up & Fetching DAT lists..."
mkdir -p ~/BLT/btdat
cd ~/BLT/btdat
rm -f webattackBTdat.7z bt_webattack.dat bpeersBTdat.7z bt_bpeers.dat hijacksBTdat.7z bt_hijacks.dat combined-final-win.dat
wget -nv -O webattackBTdat.7z -U "Lynx/2.8.9dev.9 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/3.4.11" "http://list.iblocklist.com/?list=czvaehmjpsnwwttrdoyl&fileformat=dat&archiveformat=7z"
wget -nv -O bpeersBTdat.7z -U "Lynx/2.8.9dev.9 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/3.4.11" "http://list.iblocklist.com/?list=cwworuawihqvocglcoss&fileformat=dat&archiveformat=7z"
wget -nv -O hijacksBTdat.7z -U "Lynx/2.8.9dev.9 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/3.4.11" "http://list.iblocklist.com/?list=usrcshglbiilevmyfhse&fileformat=dat&archiveformat=7z"
echo "Downloaded blocklists."
7z e webattackBTdat.7z
7z e bpeersBTdat.7z
7z e hijacksBTdat.7z
echo "Extracted blocklists from archives."
find . -name 'czvaehmjpsnwwttrdoyl.txt' -exec mv {} bt_webattack.dat \;
find . -name 'cwworuawihqvocglcoss.txt' -exec mv {} bt_bpeers.dat \;
find . -name 'usrcshglbiilevmyfhse.txt' -exec mv {} bt_hijacks.dat \;
sed -i '$a\' *.dat
cat *.dat | sed "s/amp;//g" | sed "s/\&//g" | tr -d "\200-\377" | sort -f | uniq -i > combined-final-win.dat
perl -pi -e '$_ = "" if ( $. == 1 );' combined-final-win.dat
sed -i -e "/^#/d" -e "/^[[:space:]]*$/d" combined-final-win.dat
perl -i -pe 'chomp if eof' combined-final-win.dat
echo "Appended proper file extension to blocklists. Combined, sorted, and de-duped. Your BitTorrent blocklist has been updated."
rm -f webattackBTdat.7z bt_webattack.dat bpeersBTdat.7z bt_bpeers.dat hijacksBTdat.7z bt_hijacks.dat
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
