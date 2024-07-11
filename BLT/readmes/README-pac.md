The [update-pac.sh file](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh) is a really simple bash script, which downloads various lists of malicious domains, does a little clean-up on them, merges, sorts, and de-dupes those lists, before combining them into one clean file. Optionally (via uncommenting the relevant lines), it then uploads the resultant PAC file to an FTP server of your choice (so you can easily utilize it on multiple devices).

**Notes**:
- Many thanks to [A. Manoussakis](https://savannah.gnu.org/users/amanou) for his solution to TLD-optimization / overlapping FQDN-reduction. My backend routine (using a slew of GNU utilities and `pcregrep`, often necessitating manual verification) was too unwieldy and inefficient to share. You are a scholar, a gentleman, and saved me hours of re-writing parsing routines.

- You must have the dependencies mentioned on the main readme installed to utilize this script.

- This script processes both **plain domain lists** and **hosts files** (including entries which are **followed** by comments on the same line). Though the former is preferred, both types of lists should work just fine.

- Domain list subscriptions can be modified directly in the script itself. All of them are prepended with the `wget` command. You may add and remove whatever sources you wish.

- You can whitelist additional domains via appending them to the end of the `pacpatterns.dat` file, which is housed in the `parsing` subdirectory of the utilities. Each whitelisted domain must be preceded by `^` and followed by `$`, just like the preconfigured whitelisted items. Please follow standard regex conventions for escaping characters in the whitelist. This file contains some optimization-related exclusions to remove entries from the compiled PAC list which are already blocked via template insertions.

- If you don't know what you are doing and you deviate from the instructions, then you are being dumb.

- The Windows version of this can be found here: https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT/Cygwin
