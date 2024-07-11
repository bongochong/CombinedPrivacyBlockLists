**Recommendations & Preferences**  
How to use my lists:
- In terms of hosts files, DNSCrypt blacklists, or any DNS-based filtering solution, I use my compiled lists alone ([Standard/Full](https://github.com/bongochong/CombinedPrivacyBlockLists) on desktop devices, and [Mini/Light](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/MiniLists) on mobile and low spec devices). I pull in data from a wide variety of sources meant to cover most ad-blocking and privacy use cases - and many locales - in addition to utilizing [a carefully curated whitelist](https://github.com/bongochong/CombinedPrivacyBlockLists/blob/master/NoFormatting/WhitelistedDomains.txt) and manually reviewing commits, so I see no need to use these lists with any others.
- With Ad-blocking extensions for browsers it is a bit more complicated, so I use my ABP/uBO/AG filter list in conjunction with other lists, which always includes either AdGuard's Base + Tracking + Annoyance filters, or EasyList + EasyPrivacy + FanBoy's Annoyance filters, at bare minimum. This is mainly due to the additional exception rules, along with procedural and cosmetic filters which other lists provide.
- My IP block lists for torrent clients and other P2P applications are meant to be used stand-alone. They offer solid protection against bad actors and threats, while reducing the risk of blocking legitimate traffic (which much larger compilations are known for).
- My CIDR IP block list is meant to function as a nice baseline for individuals and very small organizations that run public-facing servers. I have found this list to be quite effective at preventing waves of intrusion attempts when I'm running public IceCast or Shoutcast streams for days or weeks at a time. If you're dealing with a larger amount of traffic on a 24/7 basis - especially international traffic - you will likely want to supplement this list with more aggressive bogon filtering and region-specific data.

---
Privacy-oriented DNS Clients:
- [Stubby](https://dnsprivacy.org/dns_privacy_daemon_-_stubby/)
- [DNSCrypt Proxy](https://github.com/DNSCrypt/dnscrypt-proxy)
- [Systemd-Resolved](https://www.freedesktop.org/software/systemd/man/systemd-resolved.service.html)
- [Simple DNSCrypt](https://simplednscrypt.org/)

<sub>At least one of these is running around the clock on some device in my possession. They get the job done and allow the utilization of at-least one encrypted DNS protocol.</sub>

---
DNS Resolvers:
- [AdGuard](https://adguard-dns.io/en/public-dns.html)
- [Quad9](https://www.quad9.net/service/service-addresses-and-features)
- [Rethink](https://rethinkdns.com/configure)
- [DNSWarden](https://dnswarden.com/customfilter.html)

<sub>These are simply my preferences. There are other fine resolvers out there, but I love the reliability of AdGuard and Quad9, along with the enormous amount of configurability that Rethink and DNS Warden offer. All four of these resolvers have fine privacy policies that range from minimal logging, to no logging at all. In very rare circumstances when I cannot use encrypted DNS, I tend toward [OpenNIC](https://www.opennic.org/) or [OpenDNS](https://www.opendns.com/).</sub>

---
Dedicated Ad-Block / Filtering Software & Plugins:
- [AdAway](https://adaway.org/)
- [AdGuard](https://adguard.com/en/welcome.html)
- [uBlock Origin](https://github.com/gorhill/uBlock)
- [AdBlock Plus](https://adblockplus.org/)
- [Rethink DNS + Firewall](https://rethinkdns.com/app)
- [Personal DNS Filter](https://github.com/IngoZenz/personaldnsfilter)
- [Simple-AdBlock for OpenWrt](https://docs.openwrt.melmac.net/simple-adblock/)
- [AdBlock for OpenWrt](https://github.com/openwrt/packages/tree/master/net/adblock/files)
- [banIP for OpenWrt](https://github.com/openwrt/packages/tree/master/net/banip)

<sub>My preferred ad-blocking extension is uBO, though AdGuard's flexibility is beyond impressive (this applies to both their stand-alone applications and the browser extension). ABP - while it has generated controversy in the past - is the most widely available Ad-blocking extension, has always been an open source project, and its lasting influence on other ad-blocking projects is undeniable. The infrastructure which ABP provides to list maintainers for issue reporting and feedback is profoundly useful as well. In terms of mobile software I find that AdAway is the simplest option for rooted Android devices, and Rethink offers the most flexible and performant option for Android devices without root (it is also a DNS Client for multiple protocols to boot), though Personal DNS Filter is great for older devices and for those who don't mind editing a config file.</sub>


<sub>In regard to the OpenWrt plugins, I use Simple-AdBlock on low spec routers, AdBlock on higher spec routers, and banIP on anything that runs OpenWrt. All three plugins are fantastic. On the topic, I have used PiHole in my home network at different points in time, and while it is superb, I have found that using OpenWrt on my routers (wired and wireless) - with some combination of the aforementioned plugins - is more than sufficient for my network-wide filtering needs.</sub>

---
Web Browsers:
- [Firefox](https://www.mozilla.org/en-US/firefox/releases/)+
- [Brave](https://brave.com/latest/)+
- [IceCat](https://www.gnu.org/software/gnuzilla/)
- [NetSurf](https://www.netsurf-browser.org/)
- [Falkon](https://www.falkon.org/)
- [Mull](https://f-droid.org/en/packages/us.spotco.fennec_dos/)

<sub>Items with a "+" require a notable amount of manual configuration to be truly respecting of user privacy, but once this is done they are more than adequate choices for users who value this. A good start for Firefox can be found [here](https://ffprofile.com/), and a comprehensive guide for Brave can be found [here](https://chef-koch.bearblog.dev/brave-browser-hardening-by-chef-koch/). I prefer IceCat and Brave under GNU/Linux; Firefox and Brave when I am forced to use Windows or OS X; Brave and Mull under Android. Additionally, I like NetSurf for reading long articles and working on websites which don't employ complex JavaScript. I think the Falkon project is wonderful as well, so I keep it around on some machines for testing. I also test my Bromite filter list in Bromite every few weeks, but the browser is not flexible enough to warrant my using it as a daily driver.</sub>

---
VPN Services:
- [Mullvad](https://mullvad.net/)
- [Froot](https://frootvpn.com/)

<sub>I rarely use commercial VPNs outside of travel situations, or when I'm dealing with an ISP that likes to throttle peer-to-peer filesharing traffic, but these two have proven to be the most reliable and least problematic for me, with both supporting OpenVPN + WireGuard. Highly recommended. There are a handful of free providers I would love to mention, but never will, as to not throw weight upon their already burdensome maintenance efforts. [Orchid](https://www.orchid.com/how-it-works/) is worth looking at as well, but not for the average user.</sub>

---
Advice for Users of Social Media:
- Do not use official social media applications. Use third-party clients or the web interfaces for such services (if you must use them at all). Services such as Facebook, Instagram, YouTube, Twitter, Tiktok, Snapchat, Reddit etc... make it much more difficult - and in some cases impossible - to block advertisements and tracking in their applications. [SSB](https://en.wikipedia.org/wiki/Site-specific_browser)s and dedicated third-party clients are far preferable. Better yet, switch to privacy-respecting or decentralized FOSS social media platforms entirely (e.g. [Mastodon](https://mastodon.social/explore); [Pixelfed](https://pixelfed.org/); [PeerTube](https://joinpeertube.org/); [Libre.fm](https://libre.fm/); [ListenBrainz](https://listenbrainz.org/); [Pleroma](https://pleroma.social/); [GNU Social](https://www.gnusocial.rocks/); [Friendica](https://friendi.ca/)), though I know this can be quite difficult for many people.
- Try using an application like [WebApps](https://f-droid.org/en/packages/com.tobykurien.webapps/), [Native Alpha](https://apt.izzysoft.de/fdroid/index/apk/com.cylonid.nativealpha), or [Tangram](https://apps.gnome.org/app/re.sonny.Tangram/) to access any social media sites you use. 
- Instead of the Twitter app: [Nitter](https://f-droid.org/en/packages/com.plexer0.nitter/); [Shitter](https://apt.izzysoft.de/fdroid/index/apk/org.nuclearfog.twidda); [Twidere](https://f-droid.org/en/packages/org.mariotaku.twidere/); [Twidere X](https://f-droid.org/en/packages/com.twidere.twiderex/); [Fritter](https://f-droid.org/en/packages/com.jonjomckay.fritter/); [TwitLatte](https://f-droid.org/en/packages/com.github.moko256.twitlatte/); [ReoTwe](https://f-droid.org/en/packages/de.digisocken.reotwe/); [SlimSocial for Twitter](https://f-droid.org/en/packages/it.rignanese.leo.slimtwitter/); [Tinfoil for Twitter](https://f-droid.org/en/packages/com.mill_e.twitterwrapper/)
- Instead of the Facebook app: [Frost](https://f-droid.org/en/packages/com.pitchedapps.frost/); [SlimSocial for Facebook](https://f-droid.org/en/packages/it.rignanese.leo.slimfacebook/); [Material FB](https://f-droid.org/en/packages/me.zeeroooo.materialfb/); [Face Slim](https://f-droid.org/en/packages/org.indywidualni.fblite/); [Tinfoil for Facebook](https://f-droid.org/en/packages/com.danvelazco.fbwrapper/); [Toffeed](https://f-droid.org/en/packages/me.jakelane.wrapperforfacebook/)
- Instead of the YouTube app: [NewPipe](https://f-droid.org/en/packages/org.schabi.newpipe/); [LibreTube](https://f-droid.org/en/packages/com.github.libretube/); [SkyTube](https://f-droid.org/en/packages/free.rm.skytube.oss/); [HoloPlay](https://f-droid.org/en/packages/com.holoplay/)
- Instead of the Reddit app: [RedReader](https://f-droid.org/en/packages/org.quantumbadger.redreader/); [Dawn](https://f-droid.org/en/packages/me.thanel.dank/); [Diode](https://f-droid.org/en/packages/in.shick.diode/); [Infinity](https://f-droid.org/en/packages/ml.docilealligator.infinityforreddit/); [Slide](https://f-droid.org/en/packages/me.ccrama.redditslide/)
- Instead of the Last.fm app: [Pano Scrobbler](https://github.com/kawaiiDango/pScrobbler); [Simple Scrobbler](https://f-droid.org/en/packages/com.adam.aslfms/)
- Instead of the Instagram app: [Barinsta](https://f-droid.org/en/packages/me.austinhuang.instagrabber/)
- There are alternative clients and frontends for Google services as well, such as: [Whoogle](https://github.com/benbusby/whoogle-search); [GMaps WV](https://f-droid.org/en/packages/us.spotco.maps/); [GApps Browser](https://f-droid.org/en/packages/com.tobykurien.google_news/); [SimplyTranslate](https://f-droid.org/en/packages/com.simplytranslate_mobile/)

<sub>These are all just suggestions, and there are a lot of alternative clients and frontends out there, but the examples I've given should give you a great head start.</sub>
