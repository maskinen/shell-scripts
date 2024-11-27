#!/bin/bash
usage=$(df --output=pcent / | tail -1 | tr -d '%')

if [ $usage -ge 90 ]; then
    echo "Disk usage is critically high: ${usage}%"
elif [ $usage -le 10 ]; then
    echo "Disk usage is very low: ${usage}%"
else
    echo "Disk usage is normal: ${usage}%"
fi