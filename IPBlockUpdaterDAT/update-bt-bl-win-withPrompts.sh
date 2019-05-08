#!/bin/bash
echo -n "Enter a directory path for this program to operate in: "
read file_dir
cd "$file_dir"
{
rm level1BTdat.7z
rm bt_level1.dat
rm level2BTdat.7z
rm bt_level2.dat
rm combined-win.txt
rm combined-final-win.dat
} &> /dev/null 2>&1
echo "Changed working directory to "$file_dir" and cleaned up old data. Now downloading lists."
wget -nv -O level1BTdat.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=dat&archiveformat=7z"
wget -nv -O level2BTdat.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=dat&archiveformat=7z"
echo "Downloaded blocklists."
7z e level1BTdat.7z
7z e level2BTdat.7z
echo "Extracted blocklists from archives."
find . -name 'ydxerpxkpcfqjaybcssw.txt' -exec mv {} bt_level1.dat \;
find . -name 'gyisgnzbhppbvsphucsw.txt' -exec mv {} bt_level2.dat \;
cat *.dat > combined-win.txt
sleep 3
sort combined-win.txt | uniq > combined-final-win.dat
sleep 3
perl -pi -e '$_ = "" if ( $. == 1 );' combined-final-win.dat
sleep 3
sed -i "/^#/d" combined-final-win.dat
sed -i "/^[[:space:]]*$/d" combined-final-win.dat
perl -i -pe 'chomp if eof' combined-final-win.dat
echo "Appended proper file extension to blocklists. Combined, sorted, and de-duped. Your BitTorrent blocklist has been updated."
