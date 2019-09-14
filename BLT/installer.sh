#!/bin/bash
echo "Creating BLT directories & Downloading block list utilities and documentation..."
mkdir -p ~/BLT/btdat
mkdir -p ~/BLT/btp2p
mkdir -p ~/BLT/hosts
mkdir -p ~/BLT/pac
mkdir -p ~/BLT/parsing
mkdir -p ~/BLT/readmes
cd ~/BLT
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/README.md"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-btdat.sh"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-btp2p.sh"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-hosts-dual.sh"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-hosts.sh"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-pac.sh"
cd ~/BLT/parsing
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/hostpatterns.dat"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/newhosts-template-dual.txt"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/newhosts-template.txt"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/pactemplate.txt"
cd ~/BLT/readmes
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-btdat.md"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-btp2p.md"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-hosts.md"
wget -nv "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-pac.md"
echo "Ensuring that scripts are made executable..."
chmod +x ~/BLT/update-btdat.sh
chmod +x ~/BLT/update-btp2p.sh
chmod +x ~/BLT/update-hosts-dual.sh
chmod +x ~/BLT/update-hosts.sh
chmod +x ~/BLT/update-pac.sh
echo "Done! Run whichever script you like via sh or dot-slash."
xdg-open ~/BLT
