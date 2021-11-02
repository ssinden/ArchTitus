    mount -t cifs -o username=ssinden@creb.ca,password=passwordhere //192.168.1.112/Drop /mnt/mnt
	rsync --recursive /mnt/mnt/ /mnt/home/ssinden
	umount /mnt/mnt
    chown -R ssinden:ssinden /mnt/home/ssinden