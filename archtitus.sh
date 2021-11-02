#!/bin/bash

    bash 0-preinstall.sh
    arch-chroot /mnt /root/ArchTitus/1-setup.sh
    source /mnt/root/ArchTitus/installs.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchTitus/2-user.sh
    arch-chroot /mnt /root/ArchTitus/3-post-setup.sh
    mount -t cifs -o username=ssinden@creb.ca,password=passwordhere //192.168.1.112/Drop /mnt/mnt
	rsync --recursive /mnt/mnt/ /home/ssinden
	umount /mnt/mnt