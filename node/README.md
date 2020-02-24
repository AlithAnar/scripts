



## SYSTEMD
```
sudo cp test_service.sh /usr/bin/test_service.sh
sudo chmod +x /usr/bin/test_service.sh

sudo cp myservice.service /etc/systemd/system/myservice.service
sudo chmod 644 /etc/systemd/system/myservice.service

sudo systemctl start myservice
sudo systemctl status myservice
sudo systemctl enable myservice
```

## WATCHMAN

```
$ cd ~
$ git clone https://github.com/facebook/watchman.git
$ cd watchman/
$ git checkout v4.9.0
$ sudo apt-get install -y autoconf automake build-essential python-dev
$ ./autogen.sh 
$ ./configure 
$ make
$ sudo make install
$ watchman --version
```
