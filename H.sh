 # File: H.sh 
 # Author: Zhang Xijin(mfs6174)
 # Email: mfs6174@gmail.com
 #
 # Copyright (C) 2011 Zhang Xijin(mfs6174)
#!/bin/bash
if [ "$1" = "4" ]; then
    cp /etc/hosts.ip4 /etc/hosts
else
    cp /etc/hosts.ip6 /etc/hosts
fi
