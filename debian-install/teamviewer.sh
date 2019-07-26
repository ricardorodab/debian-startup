#!/bin/bash

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
dpkg -i teamviewer_amd64.deb
apt-get install -f
rm teamviewer_amd64.deb
