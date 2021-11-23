The [update-hosts.sh](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/Cygwin/update-hosts.sh), [update-hosts-dual.sh](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/Cygwin/update-hosts-dual.sh), and [update-hosts-six.sh](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/Cygwin/update-hosts-six.sh) scripts are meant to automate the process of creating and updating your computer's hosts file on GNU/Linux and other Unix-like Operating Systems (like OS X).

**Checklist for use**:
1. Make sure that you have the dependencies mentioned on the main readme installed.
2. Open a terminal in or `cd` into your `BLT` directory.
3. Launch the script (`./update-hosts.sh` should do).
4. Watch the output of the script.
5. Run the script as often as you like to keep your hosts file up to date.
6. Enjoy the magic of having a comprehensive and up-to-date hosts file which protects you from online trackers, advertisements, and exploits.


**Notes**:
- Hosts file subscriptions can be modified directly in the script(s). All of them are prepended with the `wget` command. You may add and remove whatever sources you wish. The hosts file scripts can process both **hosts files** *and* **plain domain** lists.

- You can whitelist additional domains via appending them to the end of the `hostpatterns.dat` file, which is housed in the `parsing` subdirectory of the utilities. Each whitelisted domain must be preceded by `^0\.0\.0\.0\s` and followed by `$`, just like the preconfigured whitelisted items. Please follow standard regex conventions for escaping characters in the whitelist.

- You can blacklist additional domains via appending them to the relavant `newhosts` template files in the aforementioned `parsing` directory. Each additional blacklist entry must be preceded by `0.0.0.0 `  and/or  `::`.

- For those who wish to generate a hosts file containing entries for both IPv4 and IPv6, please use the `update-hosts-dual.sh` script. For those who wish to generate a hosts file containing entries only for IPv6, please use the `update-hosts-six.sh` script.

- I choose to block servers associated with an advertising and tracking outlet known as [Device9](https://www.bloomberg.com/research/stocks/private/snapshot.asp?privcapId=311903236). You will find their servers in your hosts file if you use my scripts with their default configurations. I do not know why, but nearly every hosts list and ad-blocking filter list does not block these servers, when they are as nefarious and invasive as the others.

- If you don't know what you are doing and you deviate from the instructions, then you are being dumb.
