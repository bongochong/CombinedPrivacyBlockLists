# Combined Privacy Block Lists
Ad-blocking hosts files, IP block lists, PAC filters, and an ABP / uBO subscription, all merged, sorted and de-duped from multiple reputable sources, along with my own research. The generation of these lists is automated via my homemade scripts and utilities ([many of which are now available in a subdirectory of this repository](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT)). Said utilities can be installed with a simple install script or one liner, for ease of use. It should also be noted that I manually go over all updates with a diff utility, before making a final commit. All content in this repo is approved by Richard Stallman himself (theoretically). Use as you see fit.  

These lists block malicious and harmfully deceptive content, like advertising, tracking, telemetry, scam, and malware servers. These lists *do not* block porn, social media, or so-called "fake news" domains, except for the advertising, tracking, telemetry, scam, and malware servers associated with such sites. False positives are rigorously removed from all lists upon discovery, and the hosts files are processed by an IDN-to-Punycode conversion routine (meaning that they can be utilized on *all* operating systems). In short, all of these block lists are comprehensive and universally compatible, while remaining reasonable in size and scope.  

Updates to the lists usually occur on a weekly basis, and sometimes more frequently. If there is a wave of rapid updates in a single day, this often means that there are significant improvements under way. Please consider [donating to the project](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/DONATE.md) if you find it useful. It should also be noted that my lists are not *just* relevant to those living in English-speaking countries, as I make efforts to block a good amount of malicious "international" content as well.  

**Descriptions**

- [**newhosts-final.hosts**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final.hosts): Is a comprehensive hosts file which blocks known ad, exploit, malware, and tracking servers. It is pulled from MVPS<sup>1</sup>, PGL Yoyo<sup>2</sup>, Malware Domain List<sup>3</sup>, URL Haus<sup>4</sup> and EasyList<sup>5</sup>, along with a number of supplementary sources (like AdGuard) for increased protection against telemetry, and additions for mobile platforms.<sup>6</sup> It is then merged, sorted and deduped. This list is compatible with all operating systems that make use of a hosts file (obviously this includes Windows, OS X, GNU/Linux and more). It works great with mobile VPN ad-blocking solutions too. Notably enhanced privacy and security awaits you. _There is also an [IPv6 version](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final-IPv6.hosts), and an experimental [version for both IPv4 and IPv6](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final-Dual.hosts)._

+ [**combined-final-win.dat**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final-win.dat): Is a DAT-format IP block list suitable for use in torrent clients like Halite for Windows.<sup>7</sup> The list is merged from BlueTack levels 1 and 2, then deduped and sorted.<sup>8</sup> This will come in especially handy on public trackers.

* [**combined-final.p2p**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final.p2p): Is a P2P-format IP block list suitable for use in torrent clients like qBitTorrent<sup>9</sup> and Transmission<sup>10</sup> under any OS. The list is merged from BlueTack levels 1 and 2, then deduped and sorted. This will also come in especially handy on public trackers.

* [**combined-final.cidr**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final.cidr): Is a CIDR-format IP block list suitable for routers, older P2P clients and so on, which accept CIDR lists. It is compiled from the same sources as the two aforementioned IP block lists, in addition to the ad-blocking IP list provided by PGL Yoyo. It is likewise deduped + sorted. This list is also available without `deny from` prepended to each line, [**here**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/combined-flat.cidr).

+ [**pac-done.js**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/pac-done.js): Is a Proxy AutoConfig file meant to block advertising and tracking servers and such. This file is generated from a slimmed down list of the same reputable sources which my [main hosts file](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final.hosts) uses.

* [**cpbl-abp-list.txt**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/cpbl-abp-list.txt): Is a simple filter subscription for AdBlock Plus and uBlock Origin, derived from my main hosts file. It is optimized to be smaller than my hosts files, while still blocking the same exact content. It works great, and is an especially good choice for those who cannot modify their hosts file for whatever reason.

- [**optimized-win.hosts**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/optimized-win.hosts): Is a hosts file specifically tailored for Windows users, wherein the list is arranged to have seven hosts per line, thus saving space, and preventing the lag that some users experience when they have a large hosts file on that platform. It is culled from the same sources as my main hosts file. While the main hosts file I distribute is meant for all platforms, some Windows users experience a delay when attempting to connect to sites after starting up with a large hosts file in place. This optimized list will resolve that issue for said users. For those who wish to experiment with IPv6 additions, the [IPv4+IPv6 version is here](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/optimized-win-Dual.hosts).  

***Please feel free to subscribe to or use these lists as is. I use them on all of my personal devices.***

**Finally**, the user-friendly versions of the scripts and utilities that I use to generate these lists, can be set up in one shot [with this simple install script](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/cpbl-installer.sh).  

They include the following:  
+ [**Hosts File Updater**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts.sh) - Fully automated and easy-to-configure bash script for updating your hosts file from multiple sources. Pre-configured to work with included templates. Runs properly out of the box. GNU/Linux and other Unix-like operating systems only. There is also a version that updates your hosts file with **both** IPv4 and IPv6 entries [here](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-dual.sh), and one for IPv6-only [here](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-six.sh).

* [**BitTorrent IP Block Updater (DAT Format)**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btdat.sh) - Bash script for automated generation of an IP block list from multiple sources for torrent clients like Halite. Pre-configured and runs out of the box. GNU/Linux and other Unix-like operating systems only.

- [**BitTorrent IP Block Updater (P2P Format)**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) - Bash script for automated generation of an IP block list from multiple sources for torrent clients like qBitTorrent and Transmission. Pre-configured and runs out of the box. GNU/Linux and other Unix-like operating systems only.

+ [**PAC Updater**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh) - A bash script that automatically generates, updates and optionally uploads an ad-blocking PAC file to your server of choice. GNU/Linux and other Unix-like operating systems only.  

These tools are modified versions of the ones I run on my GNU/Linux box. I've tested them several times and they work with no issues. Some of them have dependencies, so make sure you inspect their respective readme files, and that your system has the relevant programs if you plan on using my tools. The GNU/Linux scripts should work on OS X, so long as dependencies are met. All of my tools clean up after themselves, and leave no extraneous or intermediary files behind.  

In addition, see the [**Windows Versions of these Tools**](https://github.com/bongochong/CWP-Utilities): Fully functional Windows versions of all the utilities listed above - compatible with both 32 and 64-bit versions of Windows - can be found in my [Combined Windows Privacy Utilities](https://github.com/bongochong/CWP-Utilities) repository. They are friendlier versions of my GNU/Linux tools, bundled with the necessary dependencies, provided with an easy-to-use and coherent interface.  

---

<sup>1. [MVPS Hosts Files](http://winhelp2002.mvps.org/). </sup> <br>
<sup>2. [PGL Yoyo Hosts Files](http://pgl.yoyo.org/adservers/). </sup> <br>
<sup>3. [Malware Domains Immortal List](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/MD-Immortal_Domains-Backup.txt). </sup> <br>
<sup>4. [URL Haus](https://gitlab.com/curben/urlhaus-filter/raw/master/urlhaus-filter-hosts-online.txt). </sup> <br>
<sup>5. [EasyList](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/ABP2Hosts/easylist_desktop-hosts.txt). </sup> <br>
<sup>6. [Supplementary](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/WindowsTelemetryBlockSupplements) [Entries](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/ABP2Hosts). </sup> <br>
<sup>7. [Halite](https://www.fosshub.com/Halite.html). </sup> <br>
<sup>8. [BlueTack Lists on I-BlockList](https://www.iblocklist.com/lists). </sup> <br>
<sup>9. [qBitTorrent](https://www.qbittorrent.org/). </sup> <br>
<sup>10. [Transmission](https://transmissionbt.com/). </sup> <br>
