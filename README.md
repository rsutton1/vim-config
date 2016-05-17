# vim-config
This repo contains scripts to configure vim and tmux with my preferred configuration.

The scripts in this repo assume you already have vim or tmux installed. 

These scripts are [idempotent](http://stackoverflow.com/a/1077421). This means if the configuration ever gets into a weird state, you can simply rerun these scripts to start over.

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

If this repo overwrote one of your precious config files, no need to worry. The `backup` directory from the root of this repo makes a timestamped directory of backups. Backups of tmux files are in `backup/tmux` and backups of vim files are in `backup/vim`. To restore a backed up file, manually copy it from the backup directory to its approriate location. 
