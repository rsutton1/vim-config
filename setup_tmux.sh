#!/bin/bash

cp _tmux-windows.json ~/.tmux-windows.json
chmod 0755 tn
ln -s $(pwd)/tn /usr/local/bin/tn
