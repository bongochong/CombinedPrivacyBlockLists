The [update-ipfilt.sh script](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/Cygwin/update-ipfilt.sh) is meant to automate the process of creating and updating block lists of IP addresses and ranges in CIDR, P2P, and DAT formats, for a variety of firewalls, and file-sharing applications (e.g. BitTorrent clients). This script is a substantially simplified version of what I use on my backend to generate such blocklists for public use. If you would like more info about the additional steps I take when generating these lists, please see the [document here](https://gist.githubusercontent.com/bongochong/46a6b7ac6450d8df4b447432ee4159ad/raw/d02e44078fd519d207206a7fe808038badfe2497/currentsources-cpbl-ipbl.txt).    

**Checklist for use**:
1. Make sure that you have the dependencies mentioned on the main readme installed.
2. Open a terminal in or `cd` into your `BLT` directory.
3. Launch the script (`./update-ipfilt.sh` should do).
4. Watch the output of the script.
5. Move the resulting block lists (`ipablock.cidr`, `btblock.p2p` and `btblock.dat`) to a directory of your choosing (or leave them in place), and configure your torrent client to utilize it, import it into your firewall's drop zone etc...
6. Run the script as often as you like to keep these block lists up to date.
7. Enjoy the magic of having comprehensive and up-to-date IP block lists that provide you with considerable protection against malicious activity.


**Notes**:
- If you don't know what you are doing and you deviate from the instructions, then you are being dumb.
