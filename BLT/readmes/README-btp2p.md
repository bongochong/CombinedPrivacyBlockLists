The [update-btp2p.sh script](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) is meant to automate the process of creating and updating an IP block list for your BitTorrent client (if you use one that prefers P2P lists, like Transmission and qBitTorrent), on GNU/Linux and other Unix-like Operating Systems (like OS X). The Windows version can be found here: https://github.com/bongochong/CWP-Utilities

**Checklist for use**:
1. Ensure that [all relevant files](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT) are downloaded to a single directory.
2. Make sure that you have [p7zip](http://p7zip.sourceforge.net/), [Perl](https://www.perl.com/about/), and [Wget](https://www.gnu.org/software/wget/) installed on your system.
3. Open a terminal in or `cd` to the aforementioned directory.
4. Launch the script (`sh update-btp2p.sh` should do).
5. Watch the output of the script.
6. Move the resulting block list (`combined-final.dat`) to a directory of your choosing (or leave it in place), and configure your torrent client to utilize it.
7. Run the script as often as you like to keep your BitTorrent IP block list up to date.
8. Enjoy the magic of having a comprehensive and up-to-date IP block list that provides you with considerable protection against malicious activity on BitTorrent sites.


**Notes**:
- If you deviate from the checklist then you are stupid. This does not apply if you are modifying the files as opposed to using them as is.
