#!/bin/bash
if [ "$2" = "connectivity-change" ]; then
    /usr/bin/fix-repository &
fi