cd bin
rm yoyo.pac
rm yoyo.pac.js
wget -nv -O yoyo.pac.txt "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=proxyautoconfig&mimetype=plaintext"
mv yoyo.pac.txt yoyo.pac
sed -i "s|PROXY 127.0.0.1|PROXY 0.0.0.0:3421|" yoyo.pac
cp yoyo.pac yoyo.pac.js
curl -T yoyo.pac ftp://SERVER-AND-DIRECTORY-HERE --user USERNAME-HERE:PASSWORD-HERE
curl -T yoyo.pac.js ftp://SERVER-AND-DIRECTORY-HERE --user USERNAME-HERE:PASSWORD-HERE
pause
