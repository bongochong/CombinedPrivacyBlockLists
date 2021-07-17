The [update-pac.sh file](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/Cygwin/update-pac.sh) is a really simple bash script, which downloads various lists of malicious domains, does a little clean-up on them, merges, sorts, and de-dupes those lists, before combining them into one clean file. Optionally (via uncommenting the relevant lines), it then uploads the resultant PAC file to an FTP server of your choice (so you can easily utilize it on multiple devices).

**Notes**:
- You must have the dependencies mentioned on the main readme installed to utilize this script.

- This script processes both **plain domain lists** and **hosts files**. Though the former is preferred, both types of lists should work just fine.

- Domain list subscriptions can be modified directly in the script itself. All of them are prepended with the `wget` command. You may add and remove whatever sources you wish.

- You can whitelist additional domains via appending them to the end of the `pacpatterns.dat` file, which is housed in the `parsing` subdirectory of the utilities. Each whitelisted domain must be preceded by `^` and followed by `$`, just like the preconfigured whitelisted items.

- If you don't know what you are doing and you deviate from the instructions, then you are being dumb.
