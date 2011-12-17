# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#!/bin/bash

# Add contrib to sources
sed -i 's/squeeze main/squeeze main contrib/g' /etc/apt/sources.list
apt-get update

# Stop whiptail from prompting for user input
export DEBIAN_FRONTEND=noninteractive

# Install packages
apt-get install -y xorg openbox alsa aufs-tools tint2 chromium-browser flashplugin-nonfree tor tor-geoipdb xfce4-terminal vlc xchat vidalia miredo thunar

# Install Thunderbird
wget -O /tmp/thunderbird.tar.bz2 http://www.mirrorservice.org/sites/releases.mozilla.org/pub/mozilla.org/thunderbird/releases/8.0/linux-i686/en-US/thunderbird-8.0.tar.bz2
tar xjf /tmp/thunderbird.tar.bz2 -C /
rm -f /tmp/thunderbird.tar.bz2

# Install Skype
wget -O /tmp/skype.deb http://www.skype.com/go/getskype-linux-deb-64
dpkg -i /tmp/skype.deb
apt-get install -fy
rm -f /tmp/skype.deb

# Configure audio
alsactl init
amixer set Master 100 unmute
amixer set Mic 100 unmute

# Configure Openbox
sed -i '/^exit 0/isu user -c startx' /etc/rc.local
sed -i '/<number>/c<number>1</number>' /etc/xdg/openbox/rc.xml
wget --no-check-certificate -O /etc/xdg/openbox/menu.xml https://raw.github.com/ushahidi/dpr/master/menu.xml

# Configure tint2
echo 'tint2 &' >> /etc/xdg/openbox/autostart.sh
mkdir -p /home/user/.config/tint2
wget --no-check-certificate -O /home/user/.config/tint2/tint2rc https://raw.github.com/ushahidi/dpr/master/tint2rc
chown -R user:user /home/user/.config

# Configure Vidalia
echo 'vidalia &' >> /etc/xdg/openbox/autostart.sh
mkdir /home/user/.vidalia
echo '[General]' >> /home/user/.vidalia/vidalia.conf
echo 'ShowMainWindowAtStart=false' >> /home/user/.vidalia/vidalia.conf
chown -R user:user /home/user/.vidalia

# Configure GRUB
sed -i '/GRUB_CMDLINE_LINUX_DEFAULT/cGRUB_CMDLINE_LINUX_DEFAULT="quiet aufs=tmpfs"' /etc/default/grub
sed -i '/GRUB_TIMEOUT/cGRUB_TIMEOUT=0' /etc/default/grub
update-grub

# Configure aufs as root
echo aufs >> /etc/initramfs-tools/modules
wget --no-check-certificate -O /etc/initramfs-tools/scripts/init-bottom/rootaufs https://raw.github.com/ushahidi/dpr/master/rootaufs.sh
chmod +x /etc/initramfs-tools/scripts/init-bottom/rootaufs
update-initramfs -u

# Restart
shutdown -r now
