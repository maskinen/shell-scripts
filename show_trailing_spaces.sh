#!/bin/bash
if [ ! -f "$1" ]; then
    echo "Error: File $1 does not exist."
    exit 1
fi
echo "Analyzing file for trailing spaces: $1"
sed -nf /tmp/trailing_space.sed "$1"