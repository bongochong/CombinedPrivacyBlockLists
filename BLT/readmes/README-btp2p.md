The [update-btp2p.sh script](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) is meant to automate the process of creating and updating an IP block list for your BitTorrent client (if you use one that prefers P2P lists, like Transmission and qBitTorrent), from iBlockList sources, on GNU/Linux and other Unix-like Operating Systems (like OS X).  

This script should be considered essentially deprecated (unless iBlockList decides to start actively maintaining their lists again), and it has been replaced by the [update-ipfilt.sh](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-ipfilt.sh) tool, which is not only more efficient, but handles a wider variety of input formats, and uses actively maintained sources by default.  

**Checklist for use**:
1. Make sure that you have the dependencies mentioned on the main readme installed.
2. Open a terminal in or `cd` into your `BLT` directory.
3. Launch the script (`./update-btp2p.sh` should do).
4. Watch the output of the script.
5. Move the resulting block list (`combined-final.dat`) to a directory of your choosing (or leave it in place), and configure your torrent client to utilize it.
6. Run the script as often as you like to keep your BitTorrent IP block list up to date.
7. Enjoy the magic of having a comprehensive and up-to-date IP block list that provides you with considerable protection against malicious activity on BitTorrent sites.


**Notes**:
- If you don't know what you are doing and you deviate from the instructions, then you are being dumb.

- The Windows version can be found here: https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT/Cygwin
