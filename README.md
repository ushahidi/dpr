# Ushahidi Debian GNU/Linux Privacy Remix

## Description

* Debian remix focused on privacy and security
* Uses aufs + tmpfs to ensure no changes to the filesystem persists after reboot
* Distributed in [Open Virtualisation Format](http://www.dmtf.org/standards/ovf)

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

## Login Credentials

* User Login: `user`
* User Password: `user`
* Root Password: `root`

## Installation

Start with a fresh install of Debian 6.0 (Squeeze) and execute the following:

    `wget -qO- --no-check-certificate https://raw.github.com/ushahidi/dpr/master/install.sh | bash`

## Filesystem Diagram

![Filesystem Diagram](https://github.com/ushahidi/dpr/raw/master/doc/filesystem.png)
## Project Files

* `install.sh` The installation shell script
* `menu.xml` The Openbox right-click menu configuration
* `rootaufs.sh` The script to mount the root file system using aufs+tmpfs
* `tint2rc` The tint2 (panel / taskbar) configuration