#!/bin/bash
read -p "enter destiation to ping like Solaris " host
while true
do
ping -c1 $host >/dev/null 2>&1
if [ $? -eq 0 ]
then
        echo $host "is alive"
        sleep 2
else
        echo $host "is not alive"
        sleep 1
fi
done
