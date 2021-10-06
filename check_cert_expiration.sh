#!/bin/bash
ovpncerdate=$(cat cert_file | grep "Not After" | cut -c 13-)
#echo $ovpncerdate
#date -d "$ovpncerdate" +%Y%m%d
expr $(date -d "$ovpncerdate" +%s) - $(date +%s)
