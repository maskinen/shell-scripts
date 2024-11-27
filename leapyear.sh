#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 <year>"
    exit 1
fi

year=$1

if (( year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) )); then
    echo "$year is a leap year."
else
    echo "$year is not a leap year."
fi