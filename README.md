# Combined Privacy Block Lists
Ad-blocking hosts files, BitTorrent IP block lists, and PAC files, all merged, sorted and de-duped from multiple reputable sources. The processing and generation of these lists is automated via [my homemade scripts and utilities](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT), which are now available in subdirectories of this repository. Use as you see fit. All content in this repo is approved by Richard Stallman himself, theoretically.

These lists *only* block ad, tracking, telemetry, scam, and malware servers. These lists *do not* block porn, social media, or so-called "fake news" domains, except for the ad, tracking, telemetry, scam, and malware servers associated with said sites. Any potential false positives are rigorously removed as well. Updates to all compiled lists usually occur around once a week, and sometimes more often.

**Descriptions**

- [**newhosts-final.hosts**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final.hosts): Is a comprehensive hosts file which blocks known ad, exploit, malware, and tracking servers. It is pulled from MVPS<sup>1</sup>, PGL Yoyo<sup>2</sup>, Malware Domain List<sup>3</sup>, Energized<sup>4</sup> and EasyList<sup>5</sup>, along with some supplementary entries for increased protection against telemetry, and additions for mobile platforms.<sup>6</sup> It is then merged, sorted and deduped. This list is compatible with all operating systems that make use of a hosts file (obviously this includes Windows, OS X, GNU/Linux and more). It works great with mobile VPN ad-blocking solutions too. Notably enhanced privacy and security awaits you. _There is also an [IPv6 version](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final-IPv6.hosts), and an experimental [version for both IPv4 and IPv6](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final-Dual.hosts)._

+ [**combined-final-win.dat**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final-win.dat): Is a DAT-format IP block list suitable for use in torrent clients like Halite for Windows.<sup>7</sup> The list is merged from BlueTack levels 1 and 2, then deduped and sorted.<sup>8</sup> This will come in especially handy on public trackers.

* [**combined-final.p2p**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final.p2p): Is a P2P-format IP block list suitable for use in torrent clients like qBitTorrent<sup>9</sup> and Transmission<sup>10</sup> under any OS. The list is merged from BlueTack levels 1 and 2, then deduped and sorted. This will also come in especially handy on public trackers.

* [**combined-final.cidr**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final.cidr): Is a CIDR-format IP block list suitable for routers, older P2P clients and so on, which accept CIDR lists. It is compiled from the same sources as the two aforementioned IP block lists, and is likewise deduped + sorted. This list is also available without `deny from` prepended to each line, [**here**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/combined-flat.cidr).

+ [**pac-done.js**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/pac-done.js): Is a Proxy AutoConfig file meant to block advertising and tracking servers and such. The file is generated from numerous reputable sources.

- [**optimized-win.hosts**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/optimized-win.hosts): Is a hosts file specifically tailored for Windows users, wherein the list is arranged to have seven hosts per line, thus saving space, and preventing the lag that some users experience when they have a large hosts file on that platform. It is culled from the same sources as my [main hosts file](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final.hosts). While the main hosts file I distribute is meant for all platforms, some Windows users experience a delay when attempting to connect to sites after starting up with a large hosts file in place. This optimized list will resolve that issue for said users. For those who wish to experiment with IPv6 additions, the [IPv4+IPv6 version is here](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/optimized-win-Dual.hosts). *Unlike the other lists, the optimized Windows hosts will be updated on roughly a biweekly basis, though sometimes more often*.

***Please feel free to subscribe to or use these lists as is. I use them on all of my personal devices.***

**Finally**, I have begun sharing some relatively user-friendly versions of the scripts and utilities that I use to generate these files on my main machine. Should you wish to utilize them to generate your own block lists, the currently working releases are [available here](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT). They can be setup manually, or in one shot [with this simple install script](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/installer.sh).  

They include the following:  
+ [**Hosts File Updater**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts.sh) - Fully automated and easy-to-configure bash script for updating your hosts file from multiple sources. Pre-configured to work with included templates. Runs properly out of the box. GNU/Linux and other Unix-like operating systems only. There is also a version that updates your hosts file with **both** IPv4 and IPv6 entries [here](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-dual.sh).

* [**BitTorrent IP Block Updater (DAT Format)**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btdat.sh) - Bash script for automated generation of an IP block list from multiple sources for torrent clients like Halite. Pre-configured and runs out of the box. GNU/Linux and other Unix-like operating systems only.

- [**BitTorrent IP Block Updater (P2P Format)**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) - Bash script for automated generation of an IP block list from multiple sources for torrent clients like qBitTorrent and Transmission. Pre-configured and runs out of the box. GNU/Linux and other Unix-like operating systems only.

+ [**PAC Updater**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh) - A bash script that automatically generates, updates and optionally uploads an ad-blocking PAC file to your server of choice. GNU/Linux and other Unix-like operating systems only.  

These tools are modified versions of the ones I run on my GNU/Linux box. I've tested them several times and they work with no issues. Some of them have dependencies, so make sure you inspect their respective readme files, and that your system has the relevant programs if you plan on using my tools. The GNU/Linux scripts should work on OS X, so long as dependencies are met. All of my tools clean up after themselves, and leave no extraneous or intermediary files behind.  

In addition, see the [**Windows Versions of these Tools**](https://github.com/bongochong/CWP-Utilities): Fully functional Windows versions of all the utilities listed above - compatible with both 32 and 64-bit versions of Windows - can be found in my [Combined Windows Privacy Utilities](https://github.com/bongochong/CWP-Utilities) repository. They are friendlier versions of my GNU/Linux tools, bundled with the necessary dependencies, provided with an easy-to-use and coherent interface.  

---

<sup>1. [MVPS Hosts Files](http://winhelp2002.mvps.org/). </sup> <br>
<sup>2. [PGL Yoyo Hosts Files](http://pgl.yoyo.org/adservers/). </sup> <br>
<sup>3. [Malware Domain List Hosts Files](http://www.malwaredomainlist.com/). </sup> <br>
<sup>4. [Energized Spark List](https://energized.pro/). </sup> <br>
<sup>5. [EasyList](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/ABP2Hosts/easylist_desktop-hosts.txt). </sup> <br>
<sup>6. [Supplementary](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/WindowsTelemetryBlockSupplements) [Entries](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/ABP2Hosts). </sup> <br>
<sup>7. [Halite](https://www.fosshub.com/Halite.html). </sup> <br>
<sup>8. [BlueTack Lists on I-BlockList](https://www.iblocklist.com/lists). </sup> <br>
<sup>9. [qBitTorrent](https://www.qbittorrent.org/). </sup> <br>
<sup>10. [Transmission](https://transmissionbt.com/). </sup> <br>
