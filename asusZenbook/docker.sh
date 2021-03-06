#!/bin/bash
apt-get remove docker docker-engine docker.io containerd runc
apt-get update
apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg2 \
	software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
apt-get install docker-compose
groupadd docker
NOW_USER=$(last -p now | cut -d ":" -f 1 | tr -d " " | cut -f 1 | cut -d$'\n' -f1)
usermod -aG docker $NOW_USER
unset NOW_USER

