# Hosts Files to Block Windows-related Telemetry
Within this directory are two hosts files which block all known Windows-related telemetry domains, **without preventing the user from utilizing Windows Update** or other core Windows functionality. They are generated from my own observations, [Crazy Max's](https://github.com/crazy-max/WindowsSpyBlocker) lighter lists, and output from utilities released by [Safer Networking](https://www.safer-networking.org/). I do not update these as often as the other lists in this repository, as Microsoft's telemetry domains tend to remain the same for very long periods of time. Though, if I notice significant changes to any of the sources, I will quickly perform an update. Anyway, the lists are as follows:

- [IPv4 Version](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/SBBTYZ-IPv4.txt)

- [IPv6 Version](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/SBBTYZ-IPv6.txt)

Enjoy!  

P.S. I now keep a list of domains which are potentially involved in Windows telemetry, but have not been included in the default lists (as they can interfere with Windows Update, or other crucial features of the OS). It can be viewed by [clicking this link](https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/PPD-AWT.txt).

P.P.S. Please don't be shy about creating an issue if these lists prevent you from using Windows Update. The only versions of Windows I have regular access to are 7 and 8.1, so that's what I use these lists on, and they don't cause any problems on those installs. It should be noted that all content in this specific directory (`WindowsTelemetryBlockSupplements`) falls under a separate license ([the WTFPL](http://www.wtfpl.net/txt/copying/)).
