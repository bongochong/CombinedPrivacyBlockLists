# Block List Tools
The data within is meant to automate the generation and updating of the following files on GNU/Linux and other Unix-like Operating Systems (like OS X and BSD):  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts.sh) (standard / IPv4 entries)  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-dual.sh) (with IPv4 + IPv6 entries)  

- [An IP block list to prevent undesirable traffic](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btdat.sh) (in DAT-format)  

- [An IP block list to prevent undesirable traffic](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) (in P2P-format)  

- [A PAC (proxy auto-configuration) file, to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh)  

**Dependencies**:  
The following packages are required to utilize all my block list utilities:  
`wget` `pcre (or pcre2 or pcregrep)` `perl` `p7zip` `p7zip-plugins (or p7zip-full)`
  
In addition, the following packages are suggested to utilize some optional features:  
`curl` is necessary if you wish to use the server upload feature of the PAC generator script.  
`idn (or idn2)` is necessary if you wish to have any Unicode / internationalized domain names converted to ASCII Punycode entries by the hosts file updater scripts.
  
It should also be noted that most of these tools make heavy use of GNU `sed`.
  
**One-line installation**:  
Paste the following in your terminal and hit enter:  
`wget -nv -O ~/cpbl-installer.sh "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/cpbl-installer.sh" && chmod +x ~/cpbl-installer.sh && sh ~/cpbl-installer.sh && rm ~/cpbl-installer.sh`  
Donezo. Now you have all the utilities.  
  
**Checklist for normal use**:
1. Download the installer [from this link](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/cpbl-installer.sh).
2. Ensure the installer is executable (either via your file manager or `chmod +x cpbl-installer.sh` in a terminal).
3. Run the installer (with `./cpbl-installer.sh` or `sh cpbl-installer.sh` in a terminal).
4. Input your chosen install location at the prompt.
5. Enjoy using the utilities to keep your block lists and hosts file up-to-date.
  
**Checklist for manual use**:
1. Ensure that all content herein is placed within a single folder named *BLT*, housed within your home/user directory (~/BLT).
2. Open a terminal in or `cd` to the aforementioned directory.
3. Launch any of the scripts you desire.
4. Watch the output of the script(s).
5. Run the script(s) as often as you like to keep your block lists up-to-date.  
  
**Notes**:
- If you deviate from either of the checklists then you are stupid. This does not apply if you are modifying the files as opposed to using them as is.
- There are [additional README files](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT/readmes) for each utility, should you wish to inspect them.
- The Windows versions of these scripts (combined into a unified interface) can be found here: https://github.com/bongochong/CWP-Utilities
