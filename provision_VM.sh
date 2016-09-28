#!/bin/bash

./setup_bash.sh
sed -i -e 's/C-a/C-e/g' _tmux.conf
./install_tmux.sh
./setup_tmux.sh
./setup_vim.sh
