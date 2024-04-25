# computer-config
Convenience Scripts and Tools for setting up Linux computers with personal preferences


## bashmod files

symlink the main mod file and source it in the `~/.bashrc`

```
cd ~
ln -s ~/dev/computer-config/bashmod_drone.sh .
echo "" >> ~/.bashrc
echo "source ~/bashmod_drone.sh" >> ~/.bashrc

```

## Config files

copy folders and config files in `.config` into the `/home/$USER/.config` directory 

`cp -r .config/* ~/.config`
