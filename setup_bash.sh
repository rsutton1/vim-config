#!/bin/bash

# create backup directory using a timestamp for the current time
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backupdir=$(pwd)/backup/bash/$timestamp
mkdir -p $backupdir

#link bash config
mv ~/.bashrc $backupdir
ln -s $(pwd)/_bashrc ~/.bashrc
