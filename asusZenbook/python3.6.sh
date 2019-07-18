#!/bin/bash
PWD_URL=$(pwd)
wget https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz
tar xvf Python-3.6.9.tgz
mv ./Python-3.6.9 /home/ricardo/Applications/
cd /home/ricardo/Applications/Python-3.6.9/
./configure --enable-optimizations
make -j8
make altinstall
cd $PWD_URL
unset PWD_URL
rm Python-3.6.9.*

