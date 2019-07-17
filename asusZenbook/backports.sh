echo "deb http://ftp.debian.org/debian stretch-backports main contrib non-free" | tee -a /etc/apt/sources.list
echo "deb-src http://ftp.debian.org/debian stretch-backports main contrib non-free" | tee -a /etc/apt/sources.list
apt-get update
apt-get install aptitude
apt-get -t stretch-backports upgrade
aptitude search linux-image
echo "Escriba la versión EXACTA de la imagen. Ejemplo \"4.16.0-0.bpo.1-amd64\""
read LINUX_IMAGE_VERSION
apt-get -t stretch-backports install linux-image-$LINUX_IMAGE_VERSION && reboot
#apt-get -t stretch-backports install linux-headers-$LINUX_IMAGE_VERSION

