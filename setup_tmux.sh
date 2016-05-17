#!/bin/bash

# create backup directory using a timestamp for the current time
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backupdir=$(pwd)/backup/$timestamp
mkdir -p $backupdir

# tmux configuration
mv ~/.tmux.conf $backupdir
ln -s $(pwd)/_tmux.conf ~/.tmux.conf

# tmux windows configuration
mv ~/.tmux-windows.json $backupdir
ln -s $(pwd)/_tmux-windows.json ~/.tmux-windows.json

# tmux launch script
mv /usr/local/bin/tn $backupdir
chmod 0755 tn
ln -s $(pwd)/tn /usr/local/bin/tn
