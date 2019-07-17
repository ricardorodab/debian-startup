#!/bin/bash
CHROME_URL=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget $CHROME_URL
dpkg -i ./google-chrome*.deb
rm ./google-chrome*.deb
apt-get install -f
