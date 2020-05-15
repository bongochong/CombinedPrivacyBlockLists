#!/bin/bash
#Block List Tools (https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT)
#From the maintainer of Combined Privacy Block Lists (https://github.com/bongochong/CombinedPrivacyBlockLists)
#License: CPAL-1.0 (https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)
echo "..."
echo -n "Which directory would you like these tools to be installed in, under your home folder? "
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
cd ~/"$file_dir"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/README.md"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-btdat.sh"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-btp2p.sh"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-hosts-dual.sh"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-hosts.sh"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-pac.sh"
cd ~/"$file_dir"/parsing
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/hostpatterns.dat"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/newhosts-template-dual.txt"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/newhosts-template.txt"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/pactemplate.txt"
cd ~/"$file_dir"/readmes
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-btdat.md"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-btp2p.md"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-hosts.md"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-pac.md"
echo "..."
echo "Ensuring that scripts are made executable..."
echo "..."
cd ~/"$file_dir"
chmod +x update-btdat.sh update-btp2p.sh update-hosts-dual.sh update-hosts.sh update-pac.sh
echo "..."
echo "Ensuring that scripts reflect your install directory..."
echo "..."
sed -i "s/BLT/$file_dir/g" update-btdat.sh
sed -i "s/BLT/$file_dir/g" update-btp2p.sh
sed -i "s/BLT/$file_dir/g" update-hosts-dual.sh
sed -i "s/BLT/$file_dir/g" update-hosts.sh
sed -i "s/BLT/$file_dir/g" update-pac.sh
echo "..."
echo "Done! Run whichever script you like via sh or dot-slash."
echo "..."
echo "In addition, if you wish to utilize all the scripts"
echo "Make sure that you have the following packages installed:"
echo "perl wget pcregrep curl p7zip"
echo "Enjoy!"
echo "..."
xdg-open ~/"$file_dir"
exit
