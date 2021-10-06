#!/bin/bash
#bulk ftp users create
newusers newusers.txt
#check ftp directory exists and permissions
if [ ! -d /var/ftp ]
then
        mkdir /var/ftp
fi
if [ $(stat --format %G /var/ftp) != ftp-admin ]
then
        chown ftp-admin:ftp-admin /var/ftp
        chmod 2770 /var/ftp
else
        chmod 2770 /var/ftp
fi
#create user ftp directories and set permissions
for ftpuser in ivan aleksei pavel
do
        mkdir /var/ftp/$ftpuser
        chown $ftpuser:ftp-admin /var/ftp/$ftpuser
        chmod 770 /var/ftp/$ftpuser
done
