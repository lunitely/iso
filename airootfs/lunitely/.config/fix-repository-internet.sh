#!/bin/bash
if ping -c 1 google.com &> /dev/null; then
    echo "Internet is available"
    /usr/bin/fix-repository
fi
