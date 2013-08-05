#!/bin/bash 
  
for I in {1..65535}; do
  #echo $I 
  #sudo hping3 -E /tmp/ovpn.trigger -d 14 -2 -p $I -c 1 --fast 280.198.66.190 
  cat /tmp/ovpn.trigger | ncat -u --send-only 280.198.66.190 $I 
done; 
#note that target IP address is not a real one. And hping also works but i prefer ncat.
#ovpn.trigger is the capture file.
