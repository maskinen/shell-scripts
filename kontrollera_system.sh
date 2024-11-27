#!/bin/bash

echo "Users with Bash shell:"
grep "/bin/bash$" /etc/passwd

echo "Lines starting with 'daemon' in /etc/group:"
grep "^daemon" /etc/group

echo "Lines not containing 'daemon' in /etc/group:"
grep -v "daemon" /etc/group

echo "Localhost info in /etc/hosts:"
grep -n "localhost" /etc/hosts
grep -c "localhost" /etc/hosts