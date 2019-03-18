# Combined Privacy Block Lists
Ad-blocking hosts files, BitTorrent IP block lists, and PAC files, all merged, sorted and de-duped from multiple reputable sources. The processing and generation of these lists is automated via my homemade bash scripts, which are now available in subdirectories of this repository. Use as you see fit. All content in this repo is approved by Richard Stallman himself, theoretically.

**Descriptions**

- [**newhosts-final.hosts**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/newhosts-final.hosts): Is a comprehensive hosts list which blocks known ad, exploit, and tracking servers, taken from MVPS<sup>1</sup>, PGL Yoyo<sup>2</sup>, Malware Domain List<sup>3</sup>, hpHosts<sup>4</sup> and AdAway<sup>5</sup>, then merged, sorted and deduped. This list is compatible with all operating systems that make use of a hosts file (obviously this includes Windows, OS X, LiGnux and more). It works great with mobile VPN ad-blocking solutions too. Notably enhanced privacy and security awaits you. _This file will be updated once a week, along with an [IPv6 version](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/newhosts-final-IPv6.hosts), and an experimental [version for both IPv4 and IPv6](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/newhosts-final-Dual.hosts)._

+ [**combined-final-win.dat**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/combined-final-win.dat): Is a DAT-format IP block list suitable for use in torrent clients like Halite for Windows.<sup>6</sup> The list is merged from BlueTack levels 1 and 2, then deduped and sorted.<sup>7</sup> This will come in especially handy on public trackers. _This file will be updated once a month._

* [**combined-final.p2p**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/combined-final.p2p): Is a P2P-format IP block list suitable for use in torrent clients like qBitTorrent<sup>8</sup> and Transmission<sup>9</sup> under any OS. The list is merged from BlueTack levels 1 and 2, then deduped and sorted. This will also come in especially handy on public trackers. _This file will be updated once a month._

+ [**yoyo.pac**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/yoyo.pac) & [**yoyo.pac.js**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/yoyo.pac.js): Are Proxy AutoConfig files meant to block advertising servers. Right now I am only hosting the lists from PGL Yoyo, but I plan to create master PAC files using a similar approach to my hosts files and IP block lists. These are great for older mobile devices where one cannot modify a hosts file, or make use of local VPN technology. _These files will be updated once a month._

***Please feel free to subscribe to or use these lists as is. I use them on all of my personal devices.***

Also, all of these files can be downloaded in a [compressed archive hosted on Disroot's NextCloud](https://cloud.disroot.org/s/5TnQ9jBtbSnTj8y/download). The NextCloud mirror will be synced with this repo approximately every 2-3 weeks.

**Finally**, I have begun sharing some rudimentarily interactive versions of the bash scripts that I use to generate these files on my main machine. Should you wish to utilize them in order to make your own lists from different sources, the currently working scripts are available here:
+ [**Hosts File Updater**](/HostsUpdater/)

* [**BitTorrent IP Block Updater (DAT Format)**](/IPBlockUpdaterDAT/)

- [**BitTorrent IP Block Updater (P2P Format)**](/IPBlockUpdaterP2P/)


These scripts are modified versions - in that they include prompts for user input - of the ones I run on my LiGnux box. They are not pretty, but I've tested them several times and they work with no issues. They all make use of [sed](https://www.gnu.org/software/sed/manual/sed.html), [Perl](https://www.perl.com/about/), and [Wget](https://www.gnu.org/software/wget/) or [curl](https://curl.haxx.se/), so make sure your system has these programs if you plan on using my tools. 

It should be noted that the scripts for generating IP block lists have an additional dependency on the [command line 7zip tools](http://p7zip.sourceforge.net/), while the one for generating a comprehensive hosts file depends on a plaintext template document and a .jar binary (which performs some of the initial operations), both of which are included in the relevant GitHub directory. Please see the readme files for each tool before using and/or modifying them.

---

<sup>1. [MVPS Hosts Files](http://winhelp2002.mvps.org/). </sup> <br>
<sup>2. [PGL Yoyo Hosts Files](http://pgl.yoyo.org/adservers/). </sup> <br>
<sup>3. [Malware Domain List Hosts Files](http://www.malwaredomainlist.com/). </sup> <br>
<sup>4. [hpHosts Hosts Files](http://hosts-file.net/); I actually use both the Ad-Server and Exploits lists from them.</sup> <br>
<sup>5. [AdAway](https://adaway.org/). </sup> <br>
<sup>6. [Halite](https://www.fosshub.com/Halite.html). </sup> <br>
<sup>7. [BlueTack Lists on I-BlockList](https://www.iblocklist.com/lists). </sup> <br>
<sup>8. [qBitTorrent](https://www.qbittorrent.org/). </sup> <br>
<sup>9. [Transmission](https://transmissionbt.com/). </sup> <br>
