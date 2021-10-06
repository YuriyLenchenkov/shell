#!/bin/bash
for ftp_dir in /var/ftp/*/
do
#change user and group owner in sub dirs and set correct permissions
        find $ftp_dir -type d -exec chown $(echo $ftp_dir | cut -d "/" -f 4):ftp-admin {} \; -exec chmod 2770 {} \;
        find $ftp_dir -type f -exec chown $(echo $ftp_dir | cut -d "/" -f 4):ftp-admin {} \; -exec chmod 660 {} \;
done
