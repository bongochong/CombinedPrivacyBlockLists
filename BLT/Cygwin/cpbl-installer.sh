#!/bin/bash
#Cygwin Block List Tools (https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT/Cygwin)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
echo "..."
echo -n "Which directory would you like these tools to be installed in under your home folder? "
read file_dir
echo "..."
echo "Creating directories & Downloading block list utilities and documentation..."
echo "..."
mkdir -p ~/"$file_dir"/btdat
mkdir -p ~/"$file_dir"/btp2p
mkdir -p ~/"$file_dir"/hosts
mkdir -p ~/"$file_dir"/ipblck
mkdir -p ~/"$file_dir"/pac
mkdir -p ~/"$file_dir"/parsing
mkdir -p ~/"$file_dir"/readmes
echo "Downloading documentation and scripts..."
cd ~/"$file_dir"
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/README.md" -o README.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-btdat.sh" -o update-btdat.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-btp2p.sh" -o update-btp2p.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-hosts-dual.sh" -o update-hosts-dual.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-hosts.sh" -o update-hosts.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-hosts-six.sh" -o update-hosts-six.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-ipfilt.sh" -o update-ipfilt.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-pac.sh" -o update-pac.sh
cd ~/"$file_dir"/parsing
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/hostpatterns.dat" -o hostpatterns.dat
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/pacpatterns.dat" -o pacpatterns.dat
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/tld-filter.dat" -o tld-filter.dat
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/newhosts-template-dual.txt" -o newhosts-template-dual.txt
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/newhosts-template.txt" -o newhosts-template.txt
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/newhosts-template-six.txt" -o newhosts-template-six.txt
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/pactemplate.txt" -o pactemplate.txt
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/wildcardwhitelist.dat" -o wildcardwhitelist.dat
cd ~/"$file_dir"/readmes
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-btdat.md" -o README-btdat.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-btp2p.md" -o README-btp2p.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-hosts.md" -o README-hosts.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-ipfilt.md" -o README-ipfilt.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-pac.md" -o README-pac.md
cd ~/"$file_dir"/pac
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/pac/cmprdmns.pl" -o cmprdmns.pl
echo "..."
echo "Ensuring that scripts are made executable..."
echo "..."
chmod +x cmprdmns.pl
cd ~/"$file_dir"
chmod +x update-btdat.sh update-btp2p.sh update-hosts-dual.sh update-hosts.sh update-hosts-six.sh update-pac.sh
echo "Ensuring that scripts reflect your install directory..."
echo "..."
sed -i "s/BLT/$file_dir/g" update-btdat.sh
sed -i "s/BLT/$file_dir/g" update-btp2p.sh
sed -i "s/BLT/$file_dir/g" update-hosts-six.sh
sed -i "s/BLT/$file_dir/g" update-hosts-dual.sh
sed -i "s/BLT/$file_dir/g" update-hosts.sh
sed -i "s/BLT/$file_dir/g" update-ipfilt.sh
sed -i "s/BLT/$file_dir/g" update-pac.sh
echo -n "What is the letter of your Windows System Drive (if you don't know, then just type C and hit enter)?: "
read sys_drive
sed -i "s/C:/$sys_drive:/g" update-hosts.sh
sed -i "s/C:/$sys_drive:/g" update-hosts-six.sh
sed -i "s/C:/$sys_drive:/g" update-hosts-dual.sh
echo "Inserted drive name into hosts file scripts."
echo "..."
read -r -p "Finally, would you like these tools to be automatically aliased in your bash configuration file, for easy launching? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
echo -e "\nalias blthosts='~/$file_dir/update-hosts.sh'" >> ~/.bashrc
echo "alias blthosts6='~/$file_dir/update-hosts-six.sh'" >> ~/.bashrc
echo "alias blthosts2='~/$file_dir/update-hosts-dual.sh'" >> ~/.bashrc
echo "alias bltipfilt='~/$file_dir/update-ipfilt.sh'" >> ~/.bashrc
echo "alias bltpac='~/$file_dir/update-pac.sh'" >> ~/.bashrc
echo "alias bltdat='~/$file_dir/update-btdat.sh'" >> ~/.bashrc
echo "alias bltp2p='~/$file_dir/update-btp2p.sh'" >> ~/.bashrc
echo "Done! All BLT aliases begin with the term 'blt', and you may see them by"
echo " reloading bash, typing 'alias' into your console prompt, then hitting enter."
echo "..."
echo "In addition, if you wish to utilize all the scripts"
echo "Make sure that you have the following packages installed:"
echo "perl wget pcre curl p7zip aggregate sipcalc libidn2 libidn2_0 or their equivalents"
echo "Enjoy!"
echo "..."
exit
else
echo "..."
echo "Done! Run whichever script you like via sh or dot-slash."
echo "..."
echo "In addition, if you wish to utilize all the scripts"
echo "Make sure that you have the following packages installed:"
echo "perl wget pcre curl p7zip aggregate sipcalc libidn2 libidn2_0 or their equivalents"
echo "Enjoy!"
echo "..."
ls -lh ~/"$file_dir"
fi
exit
