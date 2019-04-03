#!/bin/bash
echo -n "Enter a directory path for this program to operate in: "
read file_dir
cd "$file_dir"
sleep 1
rm hosts*.[0-9]
rm hosts.final
rm hostsIPv6.final
rm newhosts-template-both.txt
rm newhosts.txt
sleep 1
echo "Changed working directory to "$file_dir" and removed old files."
wget -nv -O hosts.1.txt "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"
echo "Downloaded hosts list 1"
mv hosts.1.txt hosts.1
echo "Properly saved hosts list 1"
wget -nv -O hosts.2.txt "http://winhelp2002.mvps.org/hosts.txt"
echo "Downloaded hosts list 2"
mv hosts.2.txt hosts.2
echo "Properly saved hosts list 2"
wget -nv -O hosts.3.txt "http://www.malwaredomainlist.com/hostslist/hosts.txt"
echo "Downloaded hosts list 3"
mv hosts.3.txt hosts.3
echo "Properly saved hosts list 3"
wget -nv -O hosts.4.txt "http://hosts-file.net/ad_servers.txt"
echo "Downloaded hosts list 4"
mv hosts.4.txt hosts.4
echo "Properly saved hosts list 4"
wget -nv -O hosts.5.txt "http://hosts-file.net/exp.txt"
echo "Downloaded hosts list 5"
mv hosts.5.txt hosts.5
echo "Properly saved hosts list 5"
wget -nv -O hosts.6.txt "https://adaway.org/hosts.txt"
echo "Downloaded hosts list 6"
mv hosts.6.txt hosts.6
echo "Properly saved hosts list 6"
# wget -nv -O hosts.7.txt "https://raw.githubusercontent.com/CHEF-KOCH/NSABlocklist/master/HOSTS"
# echo "Downloaded hosts list 7"
# mv hosts.7.txt hosts.7
# echo "Properly saved hosts list 7"
java -cp MergeHosts.jar com.ri.hosts.MergeHosts
echo "Successfully merged hosts lists!"
sed -i '/localhost/d' hosts.final
sed -i '/a.huluad.com/d' hosts.final
sed -i '/ad.hulu.com/d' hosts.final
sed -i '/ads-a-darwin.hulu.com/d' hosts.final
sed -i '/ads-v-darwin.hulu.com/d' hosts.final
sed -i '/ads.hulu.com/d' hosts.final
sed -i '/ads.hulu.com.edgesuite.net/d' hosts.final
sed -i '/hulu.112.2o7.net/d' hosts.final
sed -i '/huludev.112.2o7.net/d' hosts.final
sed -i '/ll.a.hulu.com/d' hosts.final
sed -i '/t2.hulu.com/d' hosts.final
sed -i '/t2.huluim.com/d' hosts.final
sed -i '/t-ak.hulu.com/d' hosts.final
sed -i '/track.hulu.com/d' hosts.final
sed -i '/tw.i.hulu.com/d' hosts.final
sed -i '/urlcheck.hulu.com/d' hosts.final
sed -i '/cdn.livechatinc.com/d' hosts.final
sed -i '/j.mp/d' hosts.final
sed 's/^127.0.0.1/::/g' hosts.final > hostsIPv6.final
sed -i 's/^127.0.0.1/0.0.0.0/g' hosts.final
perl -i -pe 'chomp if eof' hosts.final
perl -i -pe 'chomp if eof' hostsIPv6.final
sed '38r hostsIPv6.final' < newhosts-template-dual.txt > newhosts-template-both.txt
sed '35r hosts.final' < newhosts-template-both.txt > nhtemptemp.txt
sed -i "23s|DAYBONGODATEREPLACE|$(date)|" nhtemptemp.txt
mv nhtemptemp.txt newhosts.txt
perl -i -pe 'chomp if eof' newhosts.txt
echo "Successfully cleaned up and formatted hosts file! Prompting for password to make backup of and overwrite /etc/hosts..."
sudo cp /etc/hosts hostsbackup.txt
sudo cp newhosts.txt /etc/hosts
echo "Your hosts file has been updated!"
