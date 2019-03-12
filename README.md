# Combined Privacy Block Lists
Ad-blocking hosts files, BitTorrent IP block lists, and PAC files, all merged, sorted and de-duped from multiple reputable sources (using my homemade bash scripts). Use as you see fit.

**Descriptions**

+ [**combined-final-win.dat**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/combined-final-win.dat): Is an IP block list suitable for use in torrent clients like Halite for Windows.<sup>1</sup> The list is merged from BlueTack levels 1 and 2, then deduped and sorted using homemade bash scripts.<sup>2</sup>

* [**combined-final.p2p**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/combined-final.p2p): Is an IP block list suitable for use in torrent clients like qBitTorrent<sup>3</sup> and Transmission<sup>4</sup> under any OS. The list is merged from BlueTack levels 1 and 2, then deduped and sorted using homemade bash scripts.

- [**newhosts-final.hosts**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/newhosts-final.hosts): Is a comprehensive hosts list which blocks known ad, exploit, and tracking servers, taken from MVPS<sup>5</sup>, PGL Yoyo<sup>6</sup>, Malware Domain List<sup>7</sup>, and hpHosts<sup>8</sup>, then merged, sorted and deduped using homemade bash scripts. 

+ [**yoyo.pac**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/yoyo.pac) & [**yoyo.pac.js**](https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/yoyo.pac.js): Are Proxy AutoConfig files meant to block advertising servers. Right now I am only hosting the lists from PGL Yoyo, but I plan to create master PAC files using a similar approach to my hosts files and IP block lists.

***Please feel free to subscribe to these lists. I use them on all of my personal machines.***

Also, all of these files can be downloaded in a [compressed archive hosted on Disroot's NextCloud](https://cloud.disroot.org/s/5TnQ9jBtbSnTj8y/download). Both this repo and the NextCloud mirror will be updated approximately every 3 weeks.

Finally, I have begun sharing some rudimentarily interactive versions of the bash scripts that I use to generate these files on my own machine. Should you wish to utilize them in order to make your own lists from different sources, the currently working scripts are available here:
+ [**Hosts File Updater for LiGnux**](/HostsUpdater/).

* [**BitTorrent IP Block Updater for LiGnux (DAT Format)**](/IPBlockUpdaterDAT/).

- [**BitTorrent IP Block Updater for LiGnux (P2P Format)**](/IPBlockUpdaterP2P/).


These scripts will eventually be hosted in a new repository on GitHub. They are run on my main LiGnux box, and pretty much all depend on both [sed](https://www.gnu.org/software/sed/manual/sed.html) and [Perl](https://www.perl.com/about/), with the scripts for generating IP block lists having an additional dependency on the [command line 7zip tools](http://p7zip.sourceforge.net/). 

---

<sup>1. [Halite](https://www.fosshub.com/Halite.html). </sup> <br>
<sup>2. [BlueTack Lists on I-BlockList](https://www.iblocklist.com/lists). </sup> <br>
<sup>3. [qBitTorrent](https://www.qbittorrent.org/). </sup> <br>
<sup>4. [Transmission](https://transmissionbt.com/). </sup> <br>
<sup>5. [MVPS Hosts Files](http://winhelp2002.mvps.org/). </sup> <br>
<sup>6. [PGL Yoyo Hosts Files](http://pgl.yoyo.org/adservers/). </sup> <br>
<sup>7. [Malware Domain List Hosts Files](http://www.malwaredomainlist.com/). </sup> <br>
<sup>8. [hpHosts Hosts Files](http://hosts-file.net/); I actually use both the Ad-Server and Exploits lists from them.</sup> <br>
