#!/bin/bash

ACTUAL=$(pwd)
NOW_USER=$(last -p now | cut -d ":" -f 1 | tr -d " " | cut -f 1 | cut -d$'\n' -f1)
cd /home/$NOW_USER/Applications
git clone https://github.com/dustinkirkland/hollywood.git
cd ./hollywood
ln -s ./bin/hollywood /usr/local/bin/
cd $ACTUAL
unset ACTUAL
unset NOW_USER
