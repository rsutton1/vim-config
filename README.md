# vim-config
Contains scripts to setup vim and tmux with the Rob Sutton preferred configuration on a new machine.

The scripts in this repo assume you already have vim or tmux installed. These scripts simply configure the tool.

## How to use it

Clone this repo to your local machine. 

### vim

Run the following from the root of this repo:
```
sudo ./setup_vim.sh
```

### tmux
Run the following from the root of this repo:
```
sudo ./setup_tmux.sh
```

## Restoring from backup

If this repo overwrote one of your precious config files, no need to worry. The `backup` directory from the root of this repo makes a timestamped directory of backups. To restore a backed up file, manually copy it from the backup directory to its approriate location. 
