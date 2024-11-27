#!/bin/bash

# Hittar de tre största användarna av diskutrymme
echo "Disk Space Usage Report"
echo "========================"
du -sh /home/* 2>/dev/null | sort -rh | head -n 3

# Skickar in rapporten via e-post
echo "Disk Space Usage Report" | mail -s "Disk Space Usage" sebastian.grbovic@chasacademy.se