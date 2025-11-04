#!/bin/bash
# making sure its readable 
echo "== Disk Free Output =="
df -h 
#getting the precentage only 
echo -e "/n=== Used Percentage column ===" 
df -h | awk '{print $5}'

echo -e "/n== Main Drive Usage ==="
ROOT_LINE=$(df -h / | tail -1)
echo "ROOT_LINE"
#google,different percents of storage with a message   
USED_PERCENT=$(echo "ROTT_LINE" |awk '{print $5}' | tr -d '%')
case $USED_PERCENT in
   [1-6][0-9]|[0-9])
    Message="Your're good, you've only used up ${USED_PERCENT}% space."
    ;;
   [7-8][0-9])
    Message="Warning: You're using a lot of space (${USED_PERCENT}%)."
    ;;    
   9[0-9]|100)
    Message="Danger! You're almost out of space (${USED_PERCENT}%)."
    ;;
   *)
    Message="Couldn't determine storagr usage."
    ;;
esac

echo -e "/n=== Message ==="
echo "$Message"

