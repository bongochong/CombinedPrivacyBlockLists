#!/bin/bash
echo -n "Enter a directory path for this program to operate in: "
read file_dir
cd "$file_dir"
sleep 1
rm hosts.*
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
# wget -nv -O hosts.7.txt "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/ChefKoch-NSA-BlockList-IPv4.txt"
# echo "Downloaded hosts list 7"
# mv hosts.7.txt hosts.7
# echo "Properly saved hosts list 7"
java -cp MergeHosts.jar com.ri.hosts.MergeHosts
echo "Successfully merged hosts lists!"
sed -i '/localhost/d' hosts.final
sed -i 's/^127.0.0.1/0.0.0.0/g' hosts.final
perl -i -pe 'chomp if eof' hosts.final
sed '35r hosts.final' < newhosts-template.txt > nhtemptemp.txt
sed -i "23s|DAYBONGODATEREPLACE|$(date)|" nhtemptemp.txt
mv nhtemptemp.txt newhosts.txt
perl -i -pe 'chomp if eof' newhosts.txt
echo "Successfully cleaned up and formatted hosts file! Prompting for password to make backup of and overwrite /etc/hosts..."
sudo cp /etc/hosts hostsbackup.txt
sudo cp newhosts.txt /etc/hosts
echo "Your hosts file has been updated!"
