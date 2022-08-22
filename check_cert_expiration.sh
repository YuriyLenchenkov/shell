#!/bin/bash
ovpncerdate=$(cat cert_file | grep "Not After" | cut -c 13-)
#echo $ovpncerdate
#date -d "$ovpncerdate" +%Y%m%d
expr $(date -d "$ovpncerdate" +%s) - $(date +%s)

file=$(find /etc/openvpn/ -type f -name '*.conf'); ovpncerdate=$(grep "Not After" $file | cut -c 25-); expr $(date -d "$ovpncerdate" +%s) - $(date +%s)

expr $(date -d "$(cat $(find /etc/openvpn -type f -name *.conf) | grep "Not After" | cut -c 25-)" +%s) - $(date +%s)
