# Ushahidi Debian GNU/Linux Privacy Remix

## Description

* Debian remix focused on protecting your privacy
* Uses a minimalist desktop environment based on Openbox for memory conservation
* Uses aufs + tmpfs to ensure no changes to the filesystem persists after reboot
* Distributed in [Open Virtualisation Format](http://www.dmtf.org/standards/ovf)
* Ideal for running inside of [VirtualBox](https://www.virtualbox.org/)

## Downloads

* [DPR-x86_64.ova](http://sourceforge.net/projects/ushahidi/files/DPR-x86_64.ova/download)

## Application Software

* [Chromium](http://www.chromium.org/)
* [Thunderbird](http://www.mozilla.org/thunderbird/)
* [Flash Player](http://www.adobe.com/products/flashplayer.html)
* [Skype](http://www.skype.com/)
* [Tor](https://www.torproject.org/)
* [VLC](http://www.videolan.org/vlc/)
* [XChat](http://xchat.org/)
* [XFCE4 Terminal](http://www.xfce.org/projects/terminal)

## Supporting Software

* [aufs](http://aufs.sourceforge.net/)
* [Debian](http://www.debian.org/)
* [Openbox](http://openbox.org/)
* [Tint2](http://code.google.com/p/tint2/)
* [X](http://www.x.org/)

## Login Credentials

* User Login: `user`
* User Password: `user`
* Root Password: `root`

## Installation

Start with a fresh install of Debian 6.0 (Squeeze) and execute the following:

    wget -qO- --no-check-certificate https://raw.github.com/ushahidi/dpr/master/install.sh | bash

## Filesystem Diagram

![Filesystem Diagram](https://github.com/ushahidi/dpr/raw/master/doc/filesystem.png)

## Execution Diagram

![Execution Diagram](https://github.com/ushahidi/dpr/raw/master/doc/execution.png)

## Project Files

* `install.sh` The installation shell script
* `menu.xml` The Openbox right-click menu configuration
* `rootaufs.sh` The script to mount the root file system using aufs+tmpfs
* `tint2rc` The tint2 (panel / taskbar) configuration

## License

* [GNU General Public License](http://www.gnu.org/copyleft/gpl.html)

## See Also

* [Ushahidi.com](http://www.ushahidi.com/)