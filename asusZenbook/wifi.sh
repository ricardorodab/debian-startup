#!/bin/bash
wget https://wireless.wiki.kernel.org/_media/en/users/drivers/iwlwifi-9000-pu-b0-jf-b0-34.618819.0.tgz
# to see more is in here: https://www.intel.la/content/www/xl/es/support/articles/000005511/network-and-i-o/wireless-networking.html
tar -xvf iwlwifi-9000-pu-b0-jf-b0-34.618819.0.tgz
mv iwlwifi-9000-pu-b0-jf-b0-34.618819.0/* /lib/firmware
rm -r iwlwifi-9000-pu-b0-jf-b0-34.618819.0/
rm iwlwifi-9000-pu-b0-jf-b0-34.618819.0.tgz

PWD=$(pwd)
cd /lib/firmware/intel
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/intel/ibt-17-16-1.sfi
cd $PWD
unset PDW
