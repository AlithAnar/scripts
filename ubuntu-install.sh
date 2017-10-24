#!bin/sh

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo add-apt-repository ppa:webupd8team/y-ppa-manager -y
sudo add-apt-repository ppa:webupd8team/atom -y
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install python-pip libpq-dev python-dev python3-dev pulseaudio-equalizer baobab openvpn gksu guake vim google-chrome-stable bleachbit vlc ntfs-config grub-customizer oracle-java8-installer deluge p7zip-full curl software-properties-common kodi clementine y-ppa-manager nodejs npm yarn atom -y
curl -sL https://raw.githubusercontent.com/brainsik/virtualenv-burrito/master/virtualenv-burrito.sh | $SHELL
gconftool-2 -t bool -s /apps/gnome-terminal/profiles/Default/login_shell true
sudo pip install glances
wget -O adobe-air.sh http://drive.noobslab.com/data/apps/AdobeAir/adobe-air.sh
chmod +x adobe-air.sh;sudo ./adobe-air.sh


sudo apt-get autoclean
sudo apt-get autoremove
