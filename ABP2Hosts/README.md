# Hosts Files Generated from Popular AdBlock Plus-compatible Subscriptions
Within this directory are lists converted to the hosts format from popular AdBlock Plus-compatible subscriptions. They are as follows:

- [AdGuard's Mobile Ad Servers List](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_mobile_adservers-hosts.txt): Generated from [this subscription](https://github.com/AdguardTeam/AdguardFilters/blob/master/MobileFilter/sections/adservers.txt).

- [AdGuard's Mobile Spyware List](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/adguard_mobile_spyware-hosts.txt): Generated from [this subscription](https://github.com/AdguardTeam/AdguardFilters/blob/master/MobileFilter/sections/spyware.txt).

- [EasyList's Ad Servers List](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/easylist_adservers-hosts.txt): Generated from [this subscription](https://github.com/easylist/easylist/blob/master/easylist/easylist_adservers.txt).

- [EasyPrivacy's Third Party Trackers List](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/easyprivacy_3rdParty-hosts.txt): Generated from [this subscription](https://github.com/easylist/easylist/blob/master/easyprivacy/easyprivacy_thirdparty.txt).

These will be updated once a week. They are generated via fetching the filter lists with curl and piping them through a series of parsing commands, to remove content that is incompatible with hosts files. Currently I am focused on ensuring that no false-positives end up in these lists, so my routines may be a little too aggressive at avoiding that. Once I find the perfect balance, I plan on generating and maintaining more from other ABP-comptaible subscriptions in the future. Enjoy.
