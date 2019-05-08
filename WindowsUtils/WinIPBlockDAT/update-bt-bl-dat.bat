@echo off
del "combined-final-win.dat"
cd bin
rm level1BTdat.7z
rm bt_level1.dat
rm level2BTdat.7z
rm bt_level2.dat
rm combined-win.txt
rm combined-win-sort.txt
@echo on
wget -nv -O level1BTdat.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=dat&archiveformat=7z"
wget -nv -O level2BTdat.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=dat&archiveformat=7z"
7za e level1BTdat.7z
7za e level2BTdat.7z
mv ydxerpxkpcfqjaybcssw.txt bt_level1.dat
mv gyisgnzbhppbvsphucsw.txt bt_level2.dat
cat *.dat > combined-win.txt
timeout 5
sort combined-win.txt > combined-win-sort.txt
uniq combined-win-sort.txt > combined-final-win.dat
timeout 3
sed -i "/^[[:space:]]*$/d" combined-final-win.dat
timeout 3
sed -i "/^#/d" combined-final-win.dat
timeout 3
mv combined-final-win.dat ..
pause
