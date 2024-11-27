#!/bin/bash
if pgrep httpd > /dev/null; then
    echo "This machine is running a web server."
else
    echo "The web server (httpd) is not running."
fi

if pgrep init > /dev/null; then
    echo "The init daemon is running."
else
    echo "The init daemon is not running."
fi