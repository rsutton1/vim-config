#!/bin/bash

# tmux configuration
cp _tmux.conf ~/.tmux.conf

# tmux windows configuration and tmux launch script
cp _tmux-windows.json ~/.tmux-windows.json
chmod 0755 tn
ln -sf $(pwd)/tn /usr/local/bin/tn
