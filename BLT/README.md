# Block List Tools
The data within is meant to automate the generation and updating of the following files on GNU/Linux and other Unix-like Operating Systems (like OS X and BSD):  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts.sh) (standard / IPv4 entries)  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-dual.sh) (with IPv4 + IPv6 entries)  

- [An IP block list to prevent undesirable traffic](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btdat.sh) (in DAT-format)  

- [An IP block list to prevent undesirable traffic](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) (in P2P-format)  

- [A PAC (proxy auto-configuration) file, to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh)  

**Dependencies**:  
To utilize all the scripts to their full extent, you must have the following packages installed on your system: `perl wget pcregrep curl p7zip`  

**One-line installation**:  
Copy the following `wget -nv -O ~/installer.sh "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/installer.sh" && chmod +x ~/installer.sh && sh ~/installer.sh && rm ~/installer.sh` paste it into your terminal, and hit enter. Donezo. Now you have all the utilities.  

**Checklist for normal use**:
1. Download the installer [from this link](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/installer.sh).
2. Ensure the installer is executable (either via your file manager or `chmod +x installer.sh` in a terminal).
3. Run the installer (with `./installer.sh` or `sh installer.sh` in a terminal).
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
