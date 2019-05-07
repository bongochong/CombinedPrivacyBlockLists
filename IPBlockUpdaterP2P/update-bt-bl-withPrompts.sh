#!/bin/bash
echo -n "Enter a directory path for this program to operate in: "
read file_dir
cd "$file_dir"
rm level1BT.7z
rm bt_level1.p2p
rm level2BT.7z
rm bt_level2.p2p
rm combined.txt
rm combined-final.p2p
echo "Changed working directory to "$file_dir" and cleaned up old data. Now downloading lists."
wget -nv -O level1BT.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=p2p&archiveformat=7z"
wget -nv -O level2BT.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=p2p&archiveformat=7z"
echo "Downloaded blocklists."
7z e level1BT.7z
7z e level2BT.7z
echo "Extracted blocklists from archives."
find . -name 'ydxerpxkpcfqjaybcssw.txt' -exec mv {} bt_level1.p2p \;
find . -name 'gyisgnzbhppbvsphucsw.txt' -exec mv {} bt_level2.p2p \;
cat *.p2p > combined.txt
sleep 3
sort combined.txt | uniq > combined-final.p2p
sleep 3
perl -pi -e '$_ = "" if ( $. == 1 );' combined-final.p2p
sleep 3
perl -i -pe 'chomp if eof' combined-final.p2p
echo "Appended proper file extension to blocklists. Combined, sorted, and de-duped. Your BitTorrent blocklist has been updated."
