The data within is meant to automate the process of creating and updating your computer's hosts file. Though its use is currently limited to GNU / Linux and other Unix-like systems, I plan to create a version which can be run on Windows as well (though the hosts file it generates is of-course perfectly compatible with Windows).

**Checklist for use**:
1. Ensure that all files herein are downloaded to a single directory
2. Open a terminal in or cd to the aforementioned directory
3. Launch the script ("sh update-hosts-withPrompts.sh" should do)
4. Carefully follow the prompt(s)
5. Run the script as often as you like to keep your hosts file up to date.
6. Enjoy the magic of having a comprehensive and up-to-date hosts file which protects you from online trackers, advertisements, and exploits.


**Notes**:
- If you deviate from the checklist then you are stupid.

- There is a .jar binary which performs some of the initial operations for generating the hosts file. It is from a now-unmaintained project (abandoned about 9 years ago). It still works great, in the sense that it saves one from about 20-30 minutes of writing more ugly bash script. I have included the source code of this .jar file in a .zip archive here: https://github.com/bongochong/CombinedPrivacyBlockLists/raw/master/HostsUpdater/MergeHosts.jar.
