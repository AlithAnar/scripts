#!bin/sh

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo add-apt-repository ppa:wine/wine-builds -y
sudo add-apt-repository ppa:webupd8team/y-ppa-manager -y
sudo add-apt-repository ppa:no1wantdthisname/ppa -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install python-pip pulseaudio-equalizer fontconfig-infinality bum baobab steam openvpn gksu guake vim google-chrome-stable bleachbit sublime-text-installer git vlc ntfs-config grub-customizer oracle-java8-installer deluge p7zip-full curl software-properties-common kodi gufw clementine y-ppa-manager nodejs npm -y
curl -sL https://raw.githubusercontent.com/brainsik/virtualenv-burrito/master/virtualenv-burrito.sh | $SHELL
gconftool-2 -t bool -s /apps/gnome-terminal/profiles/Default/login_shell true
sudo apt-get install --install-recommends wine-staging winehq-staging -y
sudo bash /etc/fonts/infinality/infctl.sh setstyle
sudo pip install glances
wget -O adobe-air.sh http://drive.noobslab.com/data/apps/AdobeAir/adobe-air.sh
chmod +x adobe-air.sh;sudo ./adobe-air.sh


sudo apt-get autoclean
sudo apt-get autoremove
