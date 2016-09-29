#!/bin/bash
if grep -Fxq PATH="\$HOME/.local/bin:\$PATH" ~/.profile
then
    echo "Path already in file OK"
else
    echo -e PATH="\$HOME/.local/bin:\$PATH" >> ~/.profile
    REMINDER="************************************\n\nPlease log out and log in\n\n************************************"
fi

sudo apt-get install python-wxgtk3.0 python-pip python-pygame
pip install --user -r requirements.txt
pip install --user .

echo -e $REMINDER
