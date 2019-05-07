The data within is meant to automate the process of creating and updating an IP block list for your BitTorrent client (if you use one that prefers P2P lists, like Transmission or qBitTorrent).

All dependencies are satisfied via several [GnuWin32](http://gnuwin32.sourceforge.net/) utilities, which are included in the [\bin](/WindowsUtils/WinIPBlockP2P/bin/) directory, so you dont have to download anything else.

**Checklist for use**:
1. Ensure that all files herein are downloaded to a single directory.
2. Run `update-bt-bl-p2p.bat` either by double-clicking the file, or via the command prompt.
3. Watch as it generates a comprehensive block list for your torrent client in its own directory.
4. Move the resulting blocklist (`combined-final.p2p`) to a directory of your choice, and configure your torrent client to use it.
5. Run the script as often as you like to keep your BitTorrent IP block list up to date.
6. Enjoy the magic of having a comprehensive and up-to-date IP block list that provides you with considerable protection against malicious activity on BitTorrent sites.


**Notes**:
- If you deviate from the checklist then you are stupid. This does not apply if you are modifying the files as opposed to using them as is.
