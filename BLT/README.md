# Block List Tools
The data within is meant to automate the generation and updating of the following files on GNU/Linux and other Unix-like OSes:  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts.sh) (standard / IPv4 entries)  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-dual.sh) (with IPv4 + IPv6 entries)  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-six.sh) (with IPv6 entries only)  

- [An IP block list to prevent undesirable traffic](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btdat.sh) (in DAT-format)  

- [An IP block list to prevent undesirable traffic](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) (in P2P-format)  

- [A PAC (proxy auto-configuration) file, to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh)  

**One-line installation**:  
Paste the following in your terminal and hit enter:  
`bash -c "$(curl -sqL https://git.io/JRsXk)"`  

Or, if you prefer wget:  
`wget -nv -O ~/cpbl-installer.sh "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/cpbl-installer.sh" && chmod +x ~/cpbl-installer.sh && ~/cpbl-installer.sh && rm ~/cpbl-installer.sh`  
Donezo. Now you have all the utilities. You can also use this one liner to update the scripts with the latest versions from this repository, whenever you wish.

**Dependencies**:  
The following packages are required to utilize all my block list utilities:  
`wget` `curl` `pcre` (or `pcregrep`) `perl` `idn2` `p7zip` (and `p7zip-plugins` or `p7zip-full` on some systems)
  
It should also be noted that most of these tools make heavy use of GNU `sed`.
  
**Checklist for normal installation**:
1. Download the installer [from this link](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/cpbl-installer.sh).
2. Ensure the installer is executable (either via your file manager or `chmod +x cpbl-installer.sh` in a terminal).
3. Run the installer (with `./cpbl-installer.sh` in a terminal).
4. Input your chosen install location at the prompt.
5. Enjoy using the utilities to keep your block lists and hosts file up-to-date.
  
**Checklist for manual installation**:
1. Clone this repo and move the *BLT* folder within, to your user home directory (~/BLT).
2. Open a terminal in or `cd` to the aforementioned directory.
3. Launch any of the scripts you desire.
4. Watch the output of the script(s).
5. Run the script(s) as often as you like to keep your block lists up-to-date.  
  
**Notes**:
- There are [additional README files](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT/readmes) for each utility, should you wish to inspect them.

- If you deviate from either of the checklists then you are being dumb. This does not apply if you know what you are doing.

- The Windows versions of these scripts (combined into a unified interface) can be found here: https://github.com/bongochong/CWP-Utilities

- Please note that all content in this specific directory (`BLT`) falls under the main license terms of this repository ([CPAL-1.0](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/LICENSE.md)).
