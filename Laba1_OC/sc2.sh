#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo "Please run the script as root."
exit
fi

chmod 775 1
cp 1 /usr/bin
cp 2.lib /usr/lib
echo "What is your surname?"; read surname;
touch /usr/share/doc/$surname
cp 3.doc /usr/share/doc/$surname
