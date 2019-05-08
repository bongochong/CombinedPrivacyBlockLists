#!/bin/bash
cd YOUR-DIRECTORY-HERE
{
rm yoyo.pac
rm yoyo.pac.js
} &> /dev/null 2>&1
echo "Changed working directory to YOUR-DIRECTORY-HERE"
wget -nv -O YOUR-DIRECTORY-HERE/yoyo.pac.txt "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=proxyautoconfig&mimetype=plaintext"
echo "Downloaded PAC file"
mv yoyo.pac.txt yoyo.pac
echo "Properly saved PAC file"
sed -i "s|PROXY 127.0.0.1|PROXY 0.0.0.0:3421|" yoyo.pac
perl -i -pe 'chomp if eof' yoyo.pac
echo "Properly formatted PAC file"
cp yoyo.pac yoyo.pac.js
curl -T yoyo.pac ftp://SERVER-AND-DIRECTORY-HERE --user USERNAME-HERE:PASSWORD-HERE
curl -T yoyo.pac.js ftp://SERVER-AND-DIRECTORY-HERE --user USERNAME-HERE:PASSWORD-HERE
echo "Successfully uploaded PAC to remote servers. We're done!"
