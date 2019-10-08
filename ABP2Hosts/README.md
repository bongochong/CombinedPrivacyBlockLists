# Hosts Files Generated from Popular AdBlock Plus-compatible Subscriptions
Within this directory are lists converted to the hosts format from popular AdBlock Plus-compatible subscriptions. They are as follows:

- [EasyList's Ad Servers](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/easylist_adservers-hosts.txt): Generated from [this subscription](https://github.com/easylist/easylist/blob/master/easylist/easylist_adservers.txt).

- [EasyPrivacy's Third Party Trackers](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/easyprivacy_3rdParty-hosts.txt): Generated from [this subscription](https://github.com/easylist/easylist/blob/master/easyprivacy/easyprivacy_thirdparty.txt).

- [AdGuard's Mobile Ad Servers](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_mobile_adservers-hosts.txt): Generated from [this subscription](https://github.com/AdguardTeam/AdguardFilters/blob/master/MobileFilter/sections/adservers.txt).

- [AdGuard's Mobile Spyware](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_mobile_spyware-hosts.txt): Generated from [this subscription](https://github.com/AdguardTeam/AdguardFilters/blob/master/MobileFilter/sections/spyware.txt).

- [AdGuard's CryptoMiners](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_cryptominers-hosts.txt): Generated from [this subscription](https://github.com/AdguardTeam/AdguardFilters/blob/master/EnglishFilter/sections/cryptominers.txt).

- [AgGuard's Spyware Trackers](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_spyware_tracking-hosts.txt): Generated from [this subscription](https://github.com/AdguardTeam/AdguardFilters/blob/master/SpywareFilter/sections/tracking_servers.txt).

- [AdGuard's General Ad Servers](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_adservers-hosts.txt): Generated from [this subscription](https://github.com/AdguardTeam/AdguardFilters/blob/master/EnglishFilter/sections/adservers.txt).

- [AdGuard's First Party Ad Servers](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_1stParty-hosts.txt): Generated from [this subscription](https://github.com/AdguardTeam/AdguardFilters/blob/master/EnglishFilter/sections/adservers_firstparty.txt).

These will be updated once a week. They are generated via fetching the filter lists with curl and piping them through a series of parsing commands, to remove content that is incompatible with hosts files. Currently I am focused on ensuring that no false-positives end up in these lists, so my routines may be a bit aggressive in avoiding that. As I find the perfect balance, I plan on generating and maintaining more from other ABP-comptaible subscriptions. Enjoy.
