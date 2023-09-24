sudo passwd pi

sudo apt update

sudo apt upgrade -y

sudo apt install -y vim && sudo apt install -y ntfs-3g

sudo vim /etc/hostname
 
 serverpi

sudo useradd -m media -s /bin/bash

sudo passwd media

sudo visudo
%media   ALL=(ALL:ALL) NOPASSWD:ALL

sudo mkdir -p /home/media/.ssh && sudo touch /home/media/.ssh/authorized_keys

sudo vim /home/media/.ssh/authorized_keys

 copy&paste public key

sudo chmod 700 /home/media/.ssh && sudo chmod 600 /home/media/.ssh/authorized_keys

sudo chown -R media:media /home/media/.ssh

exit and login with key

sudo mkdir /mnt/usb1

sudo vim /etc/fstab

 UUID=4024B77124B76894 /mnt/usb1 ntfs-3g defaults,auto 0 0

sudo mount -a
