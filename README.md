# vim-config
This repo contains scripts to configure vim and tmux with my preferred configuration.

The scripts in this repo assume you already have vim or tmux installed. 

These scripts are [idempotent](http://stackoverflow.com/a/1077421). This means if the configuration ever gets into a weird state, you can simply rerun these scripts to start over.

These scripts are tested and working with Ubuntu 14.04, vim 7.4, and tmux 1.8.

## How to use it

Clone this repo to your local machine:
```
git clone git@github.com:rsutton1/vim-config.git
cd vim-config
```

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

To create a new tmux session with the tn tool, start tn with the name of your session:
```
tn my-new-session
```

After running `setup_tmux.sh`, tn will be in your path so you can run it from any directory.

By default, tn creates three windows in your session: editor, service, and admin. This is how I like my tmux windows set up. If you want to change the window configuration, feel free to edit `~/.tmux-windows.json` to your liking. For each window, you can define the attributes for `name`, `workdir`, and `command` which changes the window name, working directory, and command that will be running in the window, respectively. Only `name` is required.

## Restoring from backup

If this repo overwrote one of your precious config files, no need to worry. The `backup` directory from the root of this repo makes a timestamped directory of backups. Backups of tmux files are in `backup/tmux` and backups of vim files are in `backup/vim`. To restore a backed up file, manually copy it from the backup directory to its approriate location. 
