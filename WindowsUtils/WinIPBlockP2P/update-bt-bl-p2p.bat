@echo off
del "combined-final.p2p"
cd bin
rm level1BT.7z
rm bt_level1.p2p
rm level2BT.7z
rm bt_level2.p2p
rm combined.txt
rm combined-sort.txt
@echo on
wget -nv -O level1BT.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=p2p&archiveformat=7z"
wget -nv -O level2BT.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=p2p&archiveformat=7z"
7za e level1BT.7z
7za e level2BT.7z
mv ydxerpxkpcfqjaybcssw.txt bt_level1.p2p
mv gyisgnzbhppbvsphucsw.txt bt_level2.p2p
cat *.p2p > combined.txt
timeout 5
sort combined.txt > combined-sort.txt
uniq combined-sort.txt > combined-final.p2p
timeout 3
sed -i "/^[[:space:]]*$/d" combined-final.p2p
timeout 3
sed -i "/^#/d" combined-final.p2p
timeout 3
mv combined-final.p2p ..
pause
