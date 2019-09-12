#!/bin/bash
echo -n "Enter a directory path for this program to operate in: "
read file_dir
cd "$file_dir"
rm hosts.*
rm hostsIPv6.final
rm *.final
rm *.hosts
rm uniq-hosts-final.pre
rm newhosts.txt
echo "Changed working directory to "$file_dir" and removed old files."
wget -nv -O hosts.1 "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"
echo "Downloaded hosts list 1"
wget -nv -O hosts.2 "http://winhelp2002.mvps.org/hosts.txt"
echo "Downloaded hosts list 2"
wget -nv -O hosts.3 "http://www.malwaredomainlist.com/hostslist/hosts.txt"
echo "Downloaded hosts list 3"
wget -nv -O hosts.4 "http://hosts-file.net/ad_servers.txt"
echo "Downloaded hosts list 4"
wget -nv -O hosts.5 "http://hosts-file.net/exp.txt"
echo "Downloaded hosts list 5"
wget -nv -O hosts.6 "https://adaway.org/hosts.txt"
echo "Downloaded hosts list 6"
wget -nv -O hosts.7 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/SBBTYZ-IPv4.txt"
echo "Downloaded hosts list 7"
wget -nv -O hosts.8 "https://1hos.cf/mini/"
echo "Downloaded hosts list 8"
# wget -nv -O hosts.9 "https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/NoFormatting/ChefKoch-NSA-BlockList-IPv4.txt"
# echo "Downloaded hosts list 9"
cat hosts.* > hosts-cat.final
pcregrep -v -f hostpatterns.dat hosts-cat.final > hosts-pre.final
sort hosts-pre.final > sorted-hosts.final
uniq sorted-hosts.final > uniq-hosts.final
cp uniq-hosts.final uniq-hosts-final.pre
sed -i -e "s/#.*$//" uniq-hosts.final
sed -i -e "/[[:space:]]*#/d" uniq-hosts.final
sed -i -e "/[[:blank:]]*#/d" uniq-hosts.final
sed -i "s/\t/ /g" uniq-hosts.final
sed -i "s/^127.0.0.1/0.0.0.0/g" uniq-hosts.final
sed -i "s/^::1/0.0.0.0/g" uniq-hosts.final
sed -i "s/^::/0.0.0.0/g" uniq-hosts.final
sed -i -e "s/[[:space:]]*$//" uniq-hosts.final
sed -i -e "s/[[:blank:]]*$//" uniq-hosts.final
sed -i -e "s/[[:space:]]\+/ /g" uniq-hosts.final
sort uniq-hosts.final > final-sort.hosts
uniq -i final-sort.hosts > final-uniq.hosts
pcregrep -v -f hostpatterns.dat final-uniq.hosts > hosts.final
perl -i -pe 'chomp if eof' hosts.final
echo "Successfully merged hosts lists!"
sed '35r hosts.final' < newhosts-template.txt > nhtemptemp.txt
sed -i "23s|DAYBONGODATEREPLACE|$(date)|" nhtemptemp.txt
mv nhtemptemp.txt newhosts.txt
perl -i -pe 'chomp if eof' newhosts.txt
echo "Successfully cleaned up and formatted hosts file! Prompting for password to make backup of and overwrite /etc/hosts..."
sudo cp /etc/hosts hostsbackup.txt
sudo cp newhosts.txt /etc/hosts
echo "Your hosts file has been updated!"
