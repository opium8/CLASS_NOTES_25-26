#!/bin/bash 

echo "checking for updates..."
sudo apt-get update 

if [ $? -eq 0 ]; then 
    echo "System update complete"

    upgradable=$(apt list --upgradable 2>/dev/null | grep -v "listing...")
    if [ -n "$upgradable" ];then  
    echo "$upgradable"


    count=$(echo "$upgradable" | grep -v '^$' | wc -l) 
    echo "You have $count packages that can be updated"
    else 
    echo "Something went wrong"
fi
else 
    echo "something went wrong"
fi
