#!/bin/bash
if [ "$1" = "4" ]; then
    cp /etc/hosts.ip4 /etc/hosts
else
    cp /etc/hosts.ip6 /etc/hosts
fi
