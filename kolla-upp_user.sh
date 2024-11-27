#!/bin/bash
USERNAME="testuser"

if grep -q "^$USERNAME:" /etc/passwd; then
    echo "User $USERNAME exists."
else
    echo "User $USERNAME does not exist."
fi