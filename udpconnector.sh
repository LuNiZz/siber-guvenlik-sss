#!/bin/bash 
  
for I in {1..65535}; do
  #echo $I 
  #sudo hping3 -E /tmp/ovpn.trigger -d 14 -2 -p $I -c 1 --fast 81.145.54.190 
  cat /tmp/ovpn.trigger | ncat -u --send-only 81.145.54.190 $I 
done; 
