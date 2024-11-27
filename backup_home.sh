#!/bin/bash

# Variabler
remote_host="remote_host"
remote_dir="/path/to/backup"
log_file="$HOME/log/homebackup.log"
backup_file="/tmp/home_backup.tar.gz"

# Skapar loggkatalog om den inte redan finns
mkdir -p "$HOME/log"

# Skapar en backup och exkluderar socket-filer
tar --exclude='*.sock' cf - $HOME | gzip > $backup_file

# Kontrollerar diskutrymmet
required_space=$(du -s $backup_file | awk '{print $1}')
available_space=$(df --output=avail /tmp | tail -1)

if [ "$available_space" -lt "$required_space" ]; then
    echo "$(date): Not enough disk space!" >> $log_file
    exit 1
fi

# Skickar backup
scp $backup_file user@$remote_host:$remote_dir >> $log_file 2>&1