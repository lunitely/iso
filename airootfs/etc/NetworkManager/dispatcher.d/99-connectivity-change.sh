#!/bin/bash
if [ "$2" = "connectivity-change" ]; then
    if ping -c 1 1.1.1.1 &>> /var/run/fix-repository.log; then
        /usr/bin/fix-repository &
    fi
fi