# Combined Privacy Block Lists
<p align="left">
  <img src="https://i.imgur.com/tmiMGph.png">
  <img src="https://i.imgur.com/yZ6NnIW.png">
</p>

Ad & malware-blocking hosts files, IP block lists, PAC filters, and ABP / uBO subscriptions, all merged, sorted and de-duped from multiple reputable sources, along with my own research. The generation of these lists is automated via my homemade scripts and utilities, many of which are now available in a [subdirectory of this repository](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT). Said utilities can be installed with a simple [install script](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/cpbl-installer.sh) or [one liner](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/README.md), for ease of use. Most content in this repo is approved by Richard Stallman himself (theoretically). Use as you see fit.  

My lists block malicious and harmfully deceptive content, like advertising, tracking, telemetry, scam, and malware servers. The lists **do not** block porn, social media, or so-called "fake news" domains, except for the advertising, tracking, telemetry, scam, and malware servers associated with such sites. False positives are [rigorously removed](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/WhitelistedDomains.txt) from all lists upon discovery, and the hosts files are processed by an IDN-to-Punycode conversion routine (meaning that they can be utilized on *all* operating systems). In short, these block lists are both comprehensive and universally compatible, while remaining reasonable in size and scope.  

Updates to the lists usually occur on a weekly basis, but often more frequently. If there is a wave of rapid updates in a single day, this means that there are significant improvements under way. Please consider [donating to the project](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/DONATE.md) if you find it useful. It should also be noted that my lists are not *just* relevant to those living in English-speaking countries, as I make efforts to block a good amount of malicious "international" content as well. Additionally, I would like to point out that I manually go over all updates before making final commits, as I rely on this data myself. Some of my work is also included in the wonderful [AdBlock Plus](https://adblockplus.org/subscriptions#type_other), [ReThink DNS](https://rethinkdns.com/configure), and [Blokada](https://community.blokada.org/tag/blocklist) projects, all of which offer important utilities that enable users to block undesirable content across a wide variety of platforms.  

**Descriptions (*mind the [footnotes](#footnotes)*)**

- [**newhosts-final.hosts**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final.hosts): Is a comprehensive hosts file which blocks known ad, exploit, malware, and tracking servers. It is pulled from MVPS<sup>*01*</sup>, PGL Yoyo<sup>*02*</sup>, Malware Domain List<sup>*03*</sup>, URL Haus<sup>*04*</sup> and EasyList<sup>*05*</sup>, along with a variety of supplementary sources for increased protection against telemetry, additions for mobile platforms, and emerging threat prevention.<sup>*06*</sup> It is then merged, sorted and deduped. This list is compatible with all operating systems that make use of a hosts file (obviously this includes Windows, OS X, GNU/Linux and more). It works great with mobile VPN ad-blocking solutions too. Notably enhanced privacy and security awaits you. _There is also an [IPv6 version](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final-IPv6.hosts), and a [version for both IPv4 and IPv6](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final-Dual.hosts)._

* [**cpbl-abp-list.txt**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/cpbl-abp-list.txt): Is a simple filter subscription for AdBlock Plus and uBlock Origin, derived from my main hosts file, with some cosmetic filters to remove overlooked web annoyances. It is optimized to be smaller than my hosts files, while still blocking the same amount of content. It works great, and is an especially good choice for those who cannot modify their hosts file for whatever reason. I recommend using this list with AdGuard's Base + Tracking + Annoyances filters<sup>*07*</sup>, or EasyList + EasyPrivacy + FanBoy's Annoyance filters<sup>*08*</sup>, due to their additional element hiding and exception rule-sets.

+ [**pac-done.js**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/pac-done.js): Is a Proxy AutoConfig file<sup>*09*</sup> meant to block advertising, tracking, malware servers and such. This file is generated from a slimmed down list of the same reputable sources which [my main hosts file](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/newhosts-final.hosts) uses.

- [**combined-final-win.dat**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final-win.dat) and [**combined-final.p2p**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final.p2p): Are IP block lists suitable for use in torrent clients like Halite for Windows<sup>*10*</sup>, or qBitTorrent<sup>*11*</sup> and Transmission<sup>*12*</sup> under any OS. The lists are merged from BlueTack Level 1 and Bad Peers, then deduped and sorted.<sup>*13*</sup> These will come in especially handy on public trackers.

+ [**combined-final.cidr**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/combined-final.cidr): Is a CIDR-format IP block list suitable for use with the IPSet utility, Linux-based routers, older P2P clients and so on. Basically, it works with anything which accepts CIDR lists. It is compiled from the ad-blocking IP list provided by PGL Yoyo<sup>*14*</sup>, a collection of smaller lists from BlockList.de<sup>*15*</sup>, the FeodoTracker abuse list<sup>*16*</sup>, high confidence Emerging Threats lists<sup>*17*</sup>, along with DShield's Top Twenty<sup>*18*</sup>, and SpamHaus Drop + eDrop.<sup>*19*</sup> It is likewise deduped + sorted (with overlapping ranges resolved). This list is also available with `deny from` prepended to each line, [**here**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/combined-denied.cidr).

- [**optimized-win.hosts**](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/optimized-win.hosts): Is a hosts file specifically tailored for Windows users, wherein the list is arranged to have seven hosts per line, thus saving space, and preventing the lag that some users experience when they have a large hosts file on that platform. It is culled from the same sources as my main hosts file. While the main hosts file I distribute is meant for all platforms, some Windows users experience a delay when attempting to connect to sites after starting up with a large hosts file in place. This optimized list will resolve that issue for said users. For those who wish to experiment with IPv6 additions, the [IPv4+IPv6 version is here](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/optimized-win-Dual.hosts).  

***Please feel free to subscribe to or use these lists as is. I use them on all of my personal devices.*** The aforementioned lists also fall under a separate license, the [WTFPL](http://www.wtfpl.net/txt/copying/).

**Finally**, the user-friendly versions of the scripts and utilities that I use to generate these lists, can be set up in one shot [by following the instructions here](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/README.md).  

They include the following:  
+ [**Hosts File Updater**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts.sh) - Fully automated and easy-to-configure bash script for updating your hosts file from multiple sources. Pre-configured to work with included templates. Runs properly out of the box. GNU/Linux and other Unix-like operating systems only. There is also a version that updates your hosts file with **both** IPv4 and IPv6 entries [here](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-dual.sh), and one for IPv6-only [here](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-hosts-six.sh).

* [**BitTorrent IP Block Updater (DAT Format)**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btdat.sh) - Bash script for automated generation of an IP block list from multiple sources for torrent clients like Halite. Pre-configured and runs out of the box. GNU/Linux and other Unix-like operating systems only.

- [**BitTorrent IP Block Updater (P2P Format)**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-btp2p.sh) - Bash script for automated generation of an IP block list from multiple sources for torrent clients like qBitTorrent and Transmission. Pre-configured and runs out of the box. GNU/Linux and other Unix-like operating systems only.

+ [**PAC Updater**](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/BLT/update-pac.sh) - A bash script that automatically generates, updates and optionally uploads an ad-blocking PAC file to your server of choice. GNU/Linux and other Unix-like operating systems only.  

These tools are modified versions of the ones I run on my GNU/Linux box. I test them regularly. Some of them have dependencies, so make sure you inspect their respective readme files, and that your system has the relevant programs if you plan on using my tools. The GNU/Linux scripts should work on OS X or BSD, so long as dependencies are met. There are [editions for Cygwin](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT/Cygwin) as well. All of my tools clean up after themselves, and leave no extraneous or intermediary files behind.  

In addition, please see [**My CWP Utilities Repository**](https://github.com/bongochong/CWP-Utilities): Which contains fully functional Windows versions of the utilities listed above, compatible with both 32 and 64-bit versions of Windows. These are friendlier versions of my GNU/Linux tools, bundled with the necessary dependencies, distributed with an integrated, easy-to-use, and coherent interface.  

<p align="center"><img src="https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/Misc/CPBL-Clacks.gif" alt="GNU Terry Pratchett | Carpentry Get Truth | A.M.K."></p>

# <a name="footnotes"></a>

<sup>01. [MVPS Hosts](http://winhelp2002.mvps.org/). </sup> <br>
<sup>02. [PGL Yoyo Hosts](http://pgl.yoyo.org/adservers/). </sup> <br>
<sup>03. [Updated Malware Domains Immortal List](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/MD-ID-Fork.txt). </sup> <br>
<sup>04. [URL Haus Active Domains](https://gitlab.com/curben/urlhaus-filter/raw/master/urlhaus-filter-hosts-online.txt). </sup> <br>
<sup>05. [EasyList Hosts](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/ABP2Hosts/easylist_desktop-hosts.txt). </sup> <br>
<sup>06. [Additional](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/ABP2Hosts) | [Supplementary](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/NoFormatting) | [Sources](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/WindowsTelemetryBlockSupplements). </sup> <br>
<sup>07. [AdGuard Filters](https://kb.adguard.com/en/general/adguard-ad-filters#filters). </sup> <br>
<sup>08. [EasyList Filters](https://easylist.to/). </sup> <br>
<sup>09. [Proxy Auto-Configuration Files](https://developer.mozilla.org/en-US/docs/Web/HTTP/Proxy_servers_and_tunneling/Proxy_Auto-Configuration_PAC_file). </sup> <br>
<sup>10. [Halite](https://www.fosshub.com/Halite.html). </sup> <br>
<sup>11. [qBitTorrent](https://www.qbittorrent.org/). </sup> <br>
<sup>12. [Transmission](https://transmissionbt.com/). </sup> <br>
<sup>13. [BlueTack on I-BlockList](https://www.iblocklist.com/lists). </sup> <br>
<sup>14. [PGL Yoyo PeerBlock](https://pgl.yoyo.org/adservers/iplist.php?ipformat=peerblock&showintro=0&mimetype=plaintext). </sup> <br>
<sup>15. [BlockList.de Lists](https://www.blocklist.de). </sup> <br>
<sup>16. [FeodoTracker Abuse](https://feodotracker.abuse.ch). </sup> <br>
<sup>17. [Emerging Threats](https://www.proofpoint.com/us). </sup> <br>
<sup>18. [DShield Lists](https://dshield.org/). </sup> <br>
<sup>19. [SpamHaus Lists](https://www.spamhaus.org/drop/). </sup> <br>
