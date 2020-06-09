## Install Wireguard

From:
https://raspberrypi.stackexchange.com/questions/106176/how-to-bridge-an-access-point-with-a-remote-network-by-wireguard-with-the-use


```
# Get signing keys to verify the new packages, otherwise they will not install
rpi ~$ sudo -Es
rpi ~# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 04EE7237B7D453EC 648ACFD622F3D138

# Add the Buster backport repository to apt sources.list
rpi ~# echo 'deb http://httpredir.debian.org/debian buster-backports main contrib non-free' >> /etc/apt/sources.list.d/debian-backports.list

rpi ~# apt update
rpi ~# apt install wireguard
```

## Create an Ethernet Bridge

https://willhaley.com/blog/raspberry-pi-wifi-ethernet-bridge/
