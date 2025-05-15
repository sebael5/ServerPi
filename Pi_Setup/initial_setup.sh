#Change Raspberry Pi default user's password
sudo passwd {default_pi_user}

#Install vim & ntfs-3g
sudo apt update

sudo apt upgrade -y

sudo apt install -y vim && sudo apt install -y ntfs-3g

#Change the Pi's name
sudo vim /etc/hostname
 
 {hostname}

#Create a new user to user Plex
sudo useradd -m {user_for_plex} -s /bin/bash

sudo passwd {user_for_plex}

#Add new use to sudoers
sudo visudo
%{user_for_plex}   ALL=(ALL:ALL) NOPASSWD:ALL

#Add ssh key for login without user/passwd
sudo mkdir -p /home/{user_for_plex}/.ssh && sudo touch /home/{user_for_plex}/.ssh/authorized_keys

sudo vim /home/{user_for_plex}/.ssh/authorized_keys

 copy&paste public key

sudo chmod 700 /home/{user_for_plex}/.ssh && sudo chmod 600 /home/{user_for_plex}/.ssh/authorized_keys

sudo chown -R {user_for_plex}:{user_for_plex} /home/{user_for_plex}/.ssh

exit and login with key

#Create mount point for drive containing media files
sudo mkdir /mnt/usb1{mount_point}

#Add drive to fstab for persistant mount
sudo vim /etc/fstab

 UUID={drive_uuid} /mnt/usb1 ntfs-3g defaults,auto 0 0

#mount divre
sudo mount -a
