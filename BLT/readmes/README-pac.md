The [update-pac.sh file](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh) is a really simple bash script, which downloads various malicious domain lists, does a little clean-up on them, merges, sorts, and de-dupes those lists, before combining them into one clean file. Optionally (via uncommenting the relevant lines), it then uploads the resultant PAC file to an FTP server of your choice (so you can easily utilize it). This script can be modified to your liking (or not), then run via the command line (`sh update-pac.sh`).

**Notes**: You must have [`perl`](https://www.perl.com/about/), [`wget`](https://www.gnu.org/software/wget/), and [`curl`](https://curl.haxx.se/) installed on your system to utilize this script. Instructions from here apply as well: https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT  

This script only processes **plain domain lists** like the default ones included.  

The Windows version of this can be found here: https://github.com/bongochong/CWP-Utilities
