#!/bin/bash 

LOGFILE="$HOME/Desktop/removed.log"

#creating the log file 
if [ ! -f "$LOGFILE" ]; then 
    touch "$LOGFILE"
fi

#if no arguments
if [ $# -eq 0 ]; then echo "please enter a list if files or directories to delete" >&2
   exit 1
fi

#checking the first argument 
SILENT=false 
if [ "$1" == "-s" ]; then 
echo "please enter a file or directory"
fi
#making it loop 
for file in "$@"; do 
    if [ -e "$file" ]; then
        #dlete the file usoing rm 
        rm -rf "$file"

        #if not silent,log the deletion 
        if [ "$SILENT" = false ];then 
            echo "$(date '+%Y-%m-%d %H:%M:%S') |User:$USER | removed: $file" >> "$LOGFILE"
            echo "Deleted: $file"
        fi
    else
        #file not found 
        echo "file not found: $file" >&2
    fi 
done


