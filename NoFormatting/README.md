# Additional Supplementary and Miscellaneous Content
Within this directory are the following items:  

- Backups of the Immortal Malware Domain List in [hosts](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/MD-Immortal_Domains-Backup-HOSTS.txt) and [plain domain](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/MD-Immortal_Domains-Backup.txt) formats, along with my actively maintained forks thereof ([1](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/MD-ID-Fork.txt), [2](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/MD-ID-H-Fork.txt)). Included in my main hosts files.  

- A [list of supplementary domains to block](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/AdditionalSupplementaryHosts.txt), which is compiled from my own observations, and a semi-frequently shifting list of sources largely focused on threat intelligence (currently a rotating selection of smaller, regularly updated lists from: [3](https://github.com/mitchellkrogza/Badd-Boyz-Hosts/), [4](https://github.com/davidonzo/Threat-Intel/), [5](https://github.com/stamparm/maltrail/), [6](https://github.com/DRSDavidSoft/additional-hosts/), [7](https://github.com/tiuxo/hosts/), [8](https://v.firebog.net/hosts/), [9](https://github.com/Ultimate-Hosts-Blacklist/2o7.net), along with a variety of malicious domains culled from less common uBlock Origin and AdBlock Plus filter lists, and a very specific set of matching domains culled from the hosts file curated by [SomeoneWhoCares](https://someonewhocares.org/) / Dan Pollock). Included in my main hosts files.  

- Two very small lists which assist in blocking tracking servers associated with Device9 ([10](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/Device9domains-IPv4.txt), [11](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/Device9domains-IPv6.txt)).  

- [The whitelist](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/WhitelistedDomains.txt) for my hosts and PAC files. I want to be very clear about my whitelisting policy, which is simply that privacy will always be the top priority. I definitely do add entries to the whitelist which should prevent issues for most people on most devices, and I'm certainly not opposed to adding more, but will only do so after careful consideration and research.  

- A plain list of [the domains blocked by my main hosts files](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/BlacklistedDomains.txt).  

- Stripped down [IPv4](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/hosts.final) and [IPv6-only](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/hostsIPv6.final) hosts files which - aside from formatting - contain the same data as the hosts files mentioned on the main readme of this repository.  

- The optimized Windows hosts files ([12](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/optimized-win.hosts), [13](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/optimized-win-Dual.hosts)) mentioned on the [main readme](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/README.md) of this repository.  

- The PGL Yoyo Ad-Blocking Hosts file, converted to plain [CIDR Format](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/pgl-yoyo-hosts.cidr), and CIDR format [with `deny from` prepended to each line](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/pgl-yoyo-hosts-deny.cidr).

- The [version of my main CIDR-format block list with `deny from` prepended to each line](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/combined-denied.cidr) is also available in this subdirectory.  

- An ABP / uBO filter list which is [mostly the cosmetic filters](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/cpbl-abp-cosmetic-only.txt) from my main ABP / uBO lists.

- Four versions of [Chef Koch's](https://github.com/CHEF-KOCH) infamous [NSA block list](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/NoFormatting/Misc/NSABlockLists), which are **not included in any of my other lists** and are simply housed here for posterity.

File names in here are basically self-explanatory, and I'm well aware at this point, that this directory should be named *AdditionalContent* or something of the sort, but it is what it is. It should be noted that all content in this specific directory (`NoFormatting`) falls under a separate license ([the WTFPL](http://www.wtfpl.net/txt/copying/)).
