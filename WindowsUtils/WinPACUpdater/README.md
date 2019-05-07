The batch file herein is a _template_ for a really simple batch script, which downloads the ad-blocking PAC file from PGL Yoyo, does a little clean-up on it, then uploads it to an FTP server of your choice (so you can easily utilize it). This script is meant to be modified to your liking, then run via double-clicking it, or the command prompt. I plan on expanding the script to pull in hosts lists from various sources for generating a more comprehensive PAC file, but this will have to do for now.


Note: All dependencies are satisfied via several [GnuWin32](http://gnuwin32.sourceforge.net/) utilities, which are included in the [\bin](/WindowsUtils/WinPACUpdater/bin/) directory, so you dont have to download anything else.
