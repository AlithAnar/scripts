#!bin/sh

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt-get update

sudo apt-get install steam openvpn gksu guake vim google-chrome-stable bleachbit sublime-text-installer git vlc ntfs-config grub-customizer oracle-java8-installer deluge p7zip-full curl software-properties-common kodi gufw clementine -y
curl -sL https://raw.githubusercontent.com/brainsik/virtualenv-burrito/master/virtualenv-burrito.sh | $SHELL
gconftool-2 -t bool -s /apps/gnome-terminal/profiles/Default/login_shell true

sudo apt-get autoclean
sudo apt-get autoremove
