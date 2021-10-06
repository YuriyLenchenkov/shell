#!/bin/bash
resp_time=$(curl mail.ru -s -o /dev/null -w '%{time_starttransfer}')
if [ $(echo $resp_time "<=" "0.05" | bc -l) = 1 ]
then
echo "ok"
elif [ $(echo $resp_time ">" "0.05" | bc -l) = 1 -a $(echo $resp_time "<=0.1" | bc -l) = 1 ]
then
echo "warning"
elif [ $(echo $resp_time ">" "0.1" | bc -l) = 1 ]
then
echo "crytical"
fi
