#!/bin/bash

###############################################################################
# Origin:  https://gist.github.com/adoyle/71803222aff301da9662
###############################################################################

# Change the Locale to Canadian
cp /etc/locale.gen /etc/locale.gen.dist
sed -i -e "/^[^#]/s/^/#/" -e "/en_CA.UTF-8/s/^#//" /etc/locale.gen

# Set timezone
cp /etc/timezone /etc/timezone.dist
echo "America/Vancouver" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata

# Set the keyboard to US
cp /etc/default/keyboard /etc/default/keyboard.dist
sed -i -e "/XKBLAYOUT=/s/gb/us/" /etc/default/keyboard
service keyboard-setup restart

cp /var/cache/debconf/config.dat /var/cache/debconf/config.dat.dist
sed -i -e "/^Value: en_GB.UTF-8/s/en_GB/en_CA/" \
       -e "/^ locales = en_GB.UTF-8/s/en_GB/en_CA/" /var/cache/debconf/config.dat
locale-gen
update-locale LANG=en_CA.UTF-8

# Now reboot
