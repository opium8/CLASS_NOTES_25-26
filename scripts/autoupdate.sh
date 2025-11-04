#!/bin/bash 

echo "welcome, $USER!"
 
echo "Beginning autouppdate script..."
echo "start time: $(date) 

#run updates 
sudo apt update  
sudo apt upgrade -y 
sudo apt remove  

#completion mesage 
echo "update script complete!" 
echo "end time: $(date) 

while true; do 
    echo "what dould you like to do next?"
    echo "1) Reboot"
    echo "2) Shutdown" 
    echo "3) exit"
    read -p "enter choice [1-3]:"choice
    case $choice in 

        "1") Reboot|reboot) echo "Rebooting now..";sudo reboot; break ;;

        "2") Shutdown|shutdown) echo "shutting down now."; sudo shutdown now; break ;;

        "3") Exit|exit) echo "Exiting Script."; exit 0 ;;

        "*") echo "Wrong input type, please try again." ;;
    esac
done 



