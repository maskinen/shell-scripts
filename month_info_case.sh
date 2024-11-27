#!/bin/bash
month=$(date +%m)
year=$(date +%Y)

case $month in
    02)
        echo "February has 28 or 29 days."
        if (( year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) )); then
            echo "It's a leap year!"
        else
            echo "It's not a leap year."
        fi
        ;;
    04|06|09|11)
        echo "This month has 30 days."
        ;;
    *)
        echo "This month has 31 days."
        ;;
esac