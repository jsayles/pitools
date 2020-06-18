## Initial Pi Setup

### Starting from a raspian-lite (buster) image

```
touch boot/ssh
cp conf/wpa_supplicant.conf boot
```

### Apply updates

```
sudo apt update
sudo apt full-upgrade
sudo apt install tmux git
```

### Create your user

```
sudo adduser jacob
sudo usermod -a -G sudo jacob
sudo usermod -a -G gpio jacob
sudo su - jacob
mkdir ~/.ssh
curl "https://github.com/jsayles.keys" -s -o ~/.ssh/authorized_keys
```

### Run the pitools install script

```
git clone https://github.com/jsayles/pitools.git
cd pitools
sudo ./install.sh
```

## Other Userful Commands

### Set Timezone
```
sudo timedatectl set-timezone America/Vancouver
```

### Enable Remote Desktop
```
sudo apt-get -y install xrdp
sudo systemctl enable xrdp
```
