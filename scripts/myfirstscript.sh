#!/bin/bash

echo "hello world"
echo "today's date is $(date)"
echo "Pinging Google DNS" 
ping -c 5 8.8.8.8
ifconfig 
