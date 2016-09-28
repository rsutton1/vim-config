#!/bin/bash

./setup_bash.sh
./install_tmux.sh
sed -i -e 's/C-e/C-a/g' _tmux.conf
sed -i -e 's/blue/green/g' _tmux.conf
./setup_tmux.sh
./setup_vim.sh
