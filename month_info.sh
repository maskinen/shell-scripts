#!/bin/bash
month=$(date +%m)
year=$(date +%Y)

if [ "$month" -eq 2 ]; then
    echo "February has 28 or 29 days."
    if (( year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) )); then
        echo "It's a leap year!"
    else
        echo "It's not a leap year."
    fi
elif [[ "$month" =~ ^(4|6|9|11)$ ]]; then
    echo "This month has 30 days."
else
    echo "This month has 31 days."
fi