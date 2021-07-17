#!/bin/bash
#Block List Tools (https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT)
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
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/README.md" -o README.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-btdat.sh" -o update-btdat.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-btp2p.sh" -o update-btp2p.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-hosts-dual.sh" -o update-hosts-dual.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-hosts.sh" -o update-hosts.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-hosts-six.sh" -o update-hosts-six.sh
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/update-pac.sh" -o update-pac.sh
cd ~/"$file_dir"/parsing
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/hostpatterns.dat" -o hostpatterns.dat
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/pacpatterns.dat" -o pacpatterns.dat
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/tld-filter.dat" -o tld-filter.dat
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/newhosts-template-dual.txt" -o newhosts-template-dual.txt
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/newhosts-template.txt" -o newhosts-template.txt
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/newhosts-template-six.txt" -o newhosts-template-six.txt
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/parsing/pactemplate.txt" -o pactemplate.txt
cd ~/"$file_dir"/readmes
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-btdat.md" -o README-btdat.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-btp2p.md" -o README-btp2p.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-hosts.md" -o README-hosts.md
curl -s "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/readmes/README-pac.md" -o README-pac.md
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
echo -n "What is this computer's host name? If you do not know, you can list it by typing 'hostname' into another terminal prompt and hitting enter. This is important for the structure of your hosts file: "
read host_name
sed -i "s/# 127.0.1.1	PUT-YOUR-HOSTNAME-HERE-IF-YOU-WISH-THEN-UNCOMMENT-THIS-LINE/127.0.1.1	$host_name/g" parsing/newhosts-template.txt
sed -i "s/# 127.0.1.1	PUT-YOUR-HOSTNAME-HERE-IF-YOU-WISH-THEN-UNCOMMENT-THIS-LINE/127.0.1.1	$host_name/g" parsing/newhosts-template-dual.txt
sed -i "s/# 127.0.1.1	PUT-YOUR-HOSTNAME-HERE-IF-YOU-WISH-THEN-UNCOMMENT-THIS-LINE/127.0.1.1	$host_name/g" parsing/newhosts-template-six.txt
echo "Inserted host name into hosts file templates."
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
echo "perl wget pcregrep curl p7zip-full idn2 or their equivalents"
echo "Enjoy!"
echo "..."
exit
else
echo "..."
echo "Done! Run whichever script you like via sh or dot-slash."
echo "..."
echo "In addition, if you wish to utilize all the scripts"
echo "Make sure that you have the following packages installed:"
echo "perl wget pcregrep curl p7zip-full idn2 or their equivalents"
echo "Enjoy!"
echo "..."
ls -lh ~/"$file_dir"
fi
exit
