# Combined Privacy Block Lists
Ad-blocking hosts files, BitTorrent IP block lists, and PAC files, all merged, sorted and de-duped from multiple reputable sources. The processing and generation of these lists is automated via my homemade scripts and utilities, which are now available in subdirectories of this repository. Use as you see fit. All content in this repo is approved by Richard Stallman himself, theoretically. Updates to all compiled lists usually occur around once a week, and sometimes more often.

**Descriptions**

- [**newhosts-final.hosts**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/newhosts-final.hosts): Is a comprehensive hosts file which blocks known ad, exploit, and tracking servers, taken from MVPS<sup>1</sup>, PGL Yoyo<sup>2</sup>, Malware Domain List<sup>3</sup>, hpHosts<sup>4</sup> and AdAway<sup>5</sup>, along with some supplementary entries for increased protection<sup>6</sup>, then merged, sorted and deduped. This list is compatible with all operating systems that make use of a hosts file (obviously this includes Windows, OS X, LiGnux and more). It works great with mobile VPN ad-blocking solutions too. Notably enhanced privacy and security awaits you. _There is also an [IPv6 version](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/newhosts-final-IPv6.hosts), and an experimental [version for both IPv4 and IPv6](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/newhosts-final-Dual.hosts)._

+ [**combined-final-win.dat**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/combined-final-win.dat): Is a DAT-format IP block list suitable for use in torrent clients like Halite for Windows.<sup>7</sup> The list is merged from BlueTack levels 1 and 2, then deduped and sorted.<sup>8</sup> This will come in especially handy on public trackers.

* [**combined-final.p2p**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/combined-final.p2p): Is a P2P-format IP block list suitable for use in torrent clients like qBitTorrent<sup>9</sup> and Transmission<sup>10</sup> under any OS. The list is merged from BlueTack levels 1 and 2, then deduped and sorted. This will also come in especially handy on public trackers.

+ [**pac-done.js**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/pac-done.js): Is a Proxy AutoConfig file meant to block advertising and tracking servers and such. The file is generated from numerous reputable sources.

- [**optimized-win.hosts**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/NoFormatting/optimized-win.hosts): Is a hosts file specifically tailored for Windows users, wherein the list is arranged to have seven hosts per line, thus saving space, and preventing the lag that some users experience when they have a large hosts file on that platform. It is culled from the same sources as my [main hosts file](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/newhosts-final.hosts). While the main hosts file I distribute is meant for all platforms, some Windows users experience a delay when attempting to connect to sites after starting up with a large hosts file in place. This optimized list will resolve that issue for said users. For those who wish to experiment with IPv6 additions, the [IPv4+IPv6 version is here](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/NoFormatting/optimized-win-Dual.hosts).

***Please feel free to subscribe to or use these lists as is. I use them on all of my personal devices.***

**Finally**, I have begun sharing some relatively user-friendly versions of the scripts and utilities that I use to generate these files on my main machine. Should you wish to utilize them in order to make your own lists from different sources, the currently working releases are [available here](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT) and can be setup manually, or in one shot [with this simple install script](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/installer.sh).  

They include the following:  
+ [**Hosts File Updater**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts.sh) - Fully automated and easy-to-configure bash script for updating your hosts file from multiple sources. Pre-configured to work with included templates. Runs properly out of the box. LiGnux and other Unix-like operating systems only. There is also a version that updates your hosts file with **both** IPv4 and IPv6 entries [here](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-dual.sh).

* [**BitTorrent IP Block Updater (DAT Format)**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btdat.sh) - Bash script for automated generation of an IP block list from multiple sources for torrent clients like Halite. Pre-configured and runs out of the box. LiGnux and other Unix-like operating systems only.

- [**BitTorrent IP Block Updater (P2P Format)**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) - Bash script for automated generation of an IP block list from multiple sources for torrent clients like qBitTorrent and Transmission. Pre-configured and runs out of the box. LiGnux and other Unix-like operating systems only.

+ [**PAC Updater**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh) - A bash script that automatically generates, updates and optionally uploads an ad-blocking PAC file to your server of choice. LiGnux and other Unix-like operating systems only.

In addition, see the [**Windows Versions of these Tools**](https://github.com/bongochong/CWP-Utilities): Fully functional Windows versions of all the utilities listed above - compatible with both 32 and 64-bit versions of Windows - can be found in my [Combined Windows Privacy Utilities](https://github.com/bongochong/CWP-Utilities) repository. They are improved and friendlier versions of my LiGnux tools, bundled with the necessary dependencies, provided with an easy-to-use and coherent interface.

These tools are modified versions of the ones I run on my LiGnux box. I've tested them several times and they work with no issues. Some of them have dependencies, so make sure you inspect their respective readme files, and that your system has the relevant programs if you plan on using my tools. The LiGnux scripts should work on OS X, so long as dependencies are met. All of my tools clean up after themselves, and leave no extraneous or intermediary files behind.

---

<sup>1. [MVPS Hosts Files](http://winhelp2002.mvps.org/). </sup> <br>
<sup>2. [PGL Yoyo Hosts Files](http://pgl.yoyo.org/adservers/). </sup> <br>
<sup>3. [Malware Domain List Hosts Files](http://www.malwaredomainlist.com/). </sup> <br>
<sup>4. [hpHosts Hosts Files](http://hosts-file.net/); I actually use both the Ad-Server and Exploits lists from them.</sup> <br>
<sup>5. [AdAway](https://adaway.org/). </sup> <br>
<sup>6. [Supplementary](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/WindowsTelemetryBlockSupplements) [Entries](https://1hos.cf/mini/). </sup> <br>
<sup>7. [Halite](https://www.fosshub.com/Halite.html). </sup> <br>
<sup>8. [BlueTack Lists on I-BlockList](https://www.iblocklist.com/lists). </sup> <br>
<sup>9. [qBitTorrent](https://www.qbittorrent.org/). </sup> <br>
<sup>10. [Transmission](https://transmissionbt.com/). </sup> <br>
