X#!/bin/bash
# Detta skript visar:
# - Hemkatalogen
# - Terminaltyp
# - Alla tjänster som startas i runlevel 3
# Använd detta för att snabbt få systeminformation.

# Visa hemkatalogen
echo "Din hemkatalog är: $HOME"

# Visa terminaltypen
echo "Din terminaltyp är: $TERM"

# Visa tjänster som startar i runlevel 3
echo "Tjänster som startas i runlevel 3 är:"
ls /etc/rc.d