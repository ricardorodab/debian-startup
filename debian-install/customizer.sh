#!/bin/bash
NOW_PWD=$(pwd)
NOW_USER=$(last -p now | cut -d ":" -f 1 | tr -d " " | cut -f 1 | cut -d$'\n' -f1)
mkdir /home/$NOW_USER/Applications
tar -xvf grub-customizer_5.0.6.tar.gz
mv grub-customizer-5.0.6/* /home/$NOW_USER/Applications
rm -r grub-customizer-5.0.6/
cd /home/$NOW_USER/Applications/grub-customizer-5.0.6/
apt-get install cmake
apt-get install g++
apt-get install libgtkmm-3.0-dev
apt-get -t stretch-backports install libgtkmm-3.0-dev
apt-get install gettext
apt-get install libssl-dev
apt-get install libarchive-dev
cmake . && make
make install
cd $NOW_PWD
unset NOW_PWD
unset NOW_USER
