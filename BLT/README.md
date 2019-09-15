# Block List Tools
The data within is meant to automate the generation and updating of the following files on GNU/Linux and other Unix-like Operating Systems (like OS X and BSD):  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts.sh) (standard / IPv4 entries)  

- [A hosts file to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-dual.sh) (with IPv4 + IPv6 entries)  

- [An IP block list to prevent undesirable traffic](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btdat.sh) (with a DAT-format list)  

- [An IP block list to prevent undesirable traffic](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) (with a P2P-format list)  

- [A PAC (proxy auto-configuration) file, to block undesirable domains](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh)  

**Checklist for normal use**:
1. Download the installer [from this link](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/BLT/installer.sh).
2. Ensure the installer is executable (either via your file manager or `chmod +x installer.sh` in a terminal).
3. Run the installer (with `./installer.sh` or `sh installer.sh` in a terminal).
4. Input your chosen install location at the prompt.
5. Enjoy using the utilities as you would use any other scripts.

**Checklist for manual use**:
1. Ensure that all content herein is placed within a single folder named *BLT*, housed within your home/user directory (~/BLT).
2. Inspect the [additional README files](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT/readmes), and ensure that you have the necessary dependencies installed on your system (`perl wget pcregrep curl p7zip`) to fully utilize each script.
3. Open a terminal in or `cd` to the aforementioned directory.
4. Launch any of the scripts you desire.
5. Watch the output of the script(s).
6. Run the script(s) as often as you like to keep your block lists up-to-date.  
  
**Notes**:
- If you deviate from the checklist then you are stupid. This does not apply if you are modifying the files as opposed to using them as is.
- All of these files and folders - including the *parsing* directory - must be housed within ~/BLT.
- The Windows versions of these scripts (combined into a unified interface) can be found here: https://github.com/bongochong/CWP-Utilities
