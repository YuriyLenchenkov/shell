#!/bin/bash
​
#password gen
​
function passwd_gen {
p1=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
p2=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
p3=(0 1 2 3 4 5 6 7 8 9)
p4=("%" "!" "_" "(" "$" ")" )
​
symbols=$(echo ${p1[$RANDOM %26]}" "${p1[$RANDOM %26]}" "${p2[$RANDOM %26]}" "${p2[$RANDOM %26]}" "${p3[$RANDOM %10]}" "${p3[$RANDOM %10]}" "${p4[$RANDOM %6]})
password=$(shuf -e $symbols | tr -d '[:space:]')
}
​
#create users and profiles
while true
do
 read -p "enter user name " username
 read -p "enter user sheel (example: /bin/bash) " usershell
 useradd -m -s $usershell $username
 passwd_gen
 echo $username:$password | chpasswd
 
#create ftp directories
 chown ftp-admin /var/ftp
 chmod 2770 /var/ftp
 mkdir /var/ftp/$username
 chown $usrname:ftp-admin /var/ftp/$username
 chmod 770 /var/ftp/$username
 sleep 3
done
