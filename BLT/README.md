The data within is meant to automate the following processes on GNU/Linux and other Unix-like Operating Systems (like OS X and BSD):  

- Generating and updating a hosts file to block undesirable domains (with IPv4 entries).  
- Generating and updating a hosts file to block undesirable domains (with IPv4 + IPv6 entries).  
- Generating and updating an IP block list to prevent undesirable traffic (with a DAT-format list).  
- Generating and updating an IP block list to prevent undesirable traffic (with a P2P-format list).  
- Generating and updating a PAC (proxy auto-configuration) file, to block undesirable domains.  

The Windows versions of these scripts (combined into a unified interface) can be found here: https://github.com/bongochong/CWP-Utilities  

**Checklist for use**:
1. Ensure that all content herein is placed within a single folder named *BLT*, housed within your home/user directory (~/BLT).
2. Inspect the [additional README files]() to ensure that you have the necessary dependencies installed on your system.
3. Open a terminal in or `cd` to the aforementioned directory.
4. Launch any of the scripts you desire.
5. Watch the output of the script(s).
6. Run the script(s) as often as you like to keep your block lists up-to-date.  
  
**Notes**:
- If you deviate from the checklist then you are stupid. This does not apply if you are modifying the files as opposed to using them as is.
- All of these files and folders - including the *parsing* directory - must be housed within ~/BLT.
