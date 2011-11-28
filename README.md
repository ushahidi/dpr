# Ushahidi Debian GNU/Linux Privacy Remix

## Description

* Debian remix focused on privacy and security
* Uses aufs + tmpfs to ensure no changes to the filesystem persists after reboot
* Distributed in [Open Virtualisation Format](http://www.dmtf.org/standards/ovf)

## Application Software

* [Chromium](http://www.chromium.org/)
* [Adobe Flash Player](http://www.adobe.com/products/flashplayer.html)
* [Skype](http://www.skype.com/)
* [Tor](https://www.torproject.org/)
* [VLC](http://www.videolan.org/vlc/)
* [XChat](http://xchat.org/)

## Supporting Software

* [Debian](http://www.debian.org/)
* [Openbox](http://openbox.org/)
* [Tint2](http://code.google.com/p/tint2/)

## Login Credentials

* User Login: `user`
* User Password: `user`
* Root Password: `root`

## Installation

* Start with a (preferably fresh) install of Debian 6.0 (Squeeze).
* Execute the following:  
`wget -qO- --no-check-certificate https://raw.github.com/ushahidi/dpr/master/install.sh | bash`