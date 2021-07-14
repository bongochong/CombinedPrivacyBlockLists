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
mkdir -p ~/"$file_dir"/pac
mkdir -p ~/"$file_dir"/parsing
mkdir -p ~/"$file_dir"/readmes
echo "Downloading documentation and scripts..."
cd ~/"$file_dir"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/README.md" -O README.md
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-btdat.sh" -O update-btdat.sh
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-btp2p.sh" -O update-btp2p.sh
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-hosts-dual.sh" -O update-hosts-dual.sh
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-hosts.sh" -O update-hosts.sh
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-hosts-six.sh" -O update-hosts-six.sh
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/update-pac.sh" -O update-pac.sh
cd ~/"$file_dir"/parsing
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/hostpatterns.dat" -O hostpatterns.dat
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/pacpatterns.dat" -O pacpatterns.dat
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/tld-filter.dat" -O tld-filter.dat
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/newhosts-template-dual.txt" -O newhosts-template-dual.txt
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/newhosts-template.txt" -O newhosts-template.txt
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/newhosts-template-six.txt" -O newhosts-template-six.txt
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/parsing/pactemplate.txt" -O pactemplate.txt
cd ~/"$file_dir"/readmes
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-btdat.md" -O README-btdat.md
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-btp2p.md" -O README-btp2p.md
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-hosts.md" -O README-hosts.md
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/Cygwin/readmes/README-pac.md" -O README-pac.md
echo "..."
echo "Ensuring that scripts are made executable..."
echo "..."
cd ~/"$file_dir"
chmod +x update-btdat.sh update-btp2p.sh update-hosts-dual.sh update-hosts.sh update-hosts-six.sh update-pac.sh
echo "Ensuring that scripts reflect your install directory..."
echo "..."
sed -i "s/BLT/$file_dir/g" update-btdat.sh
sed -i "s/BLT/$file_dir/g" update-btp2p.sh
sed -i "s/BLT/$file_dir/g" update-hosts-six.sh
sed -i "s/BLT/$file_dir/g" update-hosts-dual.sh
sed -i "s/BLT/$file_dir/g" update-hosts.sh
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
echo "alias bltpac='~/$file_dir/update-pac.sh'" >> ~/.bashrc
echo "alias bltdat='~/$file_dir/update-btdat.sh'" >> ~/.bashrc
echo "alias bltp2p='~/$file_dir/update-btp2p.sh'" >> ~/.bashrc
echo "Done! All BLT aliases begin with the term 'blt', and you may see them by"
echo " reloading bash, typing 'alias' into your console prompt, then hitting enter."
echo "..."
echo "In addition, if you wish to utilize all the scripts"
echo "Make sure that you have the following packages installed:"
echo "perl wget pcre curl p7zip libidn2 libidn2_0 or their equivalents"
echo "Enjoy!"
echo "..."
exit
else
echo "..."
echo "Done! Run whichever script you like via sh or dot-slash."
echo "..."
echo "In addition, if you wish to utilize all the scripts"
echo "Make sure that you have the following packages installed:"
echo "perl wget pcre curl p7zip libidn2 libidn2_0 or their equivalents"
echo "Enjoy!"
echo "..."
ls -lh ~/"$file_dir"
fi
exit
