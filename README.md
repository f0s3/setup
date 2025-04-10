## **What is this repo for?**

This repository contains everything needed to install Arch Linux.
Installation is meant to be run from ArchISO terminal.

Post-installation installs my [dotfiles](https://github.com/f0s3/dotfiles) and everything needed for it.


## **Installation**

To start installation process, use this command from Arch ISO command prompt:

`
curl -sSfL https://raw.githubusercontent.com/f0s3/setup/refs/heads/main/install.sh | sh
`


## **What it does?**

This command with launch a script that will:

 - download `config.json` from this repository into current folder
 - update arch mirrors before attempting to install
 - open creds.json in order for user to change user and root passwords
 - launch installation process (archinstall), in which **it is expected from user to change partitioning manually**
 - you need to manually set **user and root credentials and username**
 - optionally **change graphics drivers** before installation
 - optionally **change installed programs** before installation
 - after pressing 'Install', installation process begins
 - after installation, **choose to not chroot** into the system, just reboot into newly created system and login with your user


## **Optional: Post-installation**

After successfully installing and booting into the system, run `post_install.sh` to finish the installation with this command:

`
curl -sSfL https://raw.githubusercontent.com/f0s3/setup/refs/heads/main/post_install.sh | zsh
`

## TODO

- install asusctl and do asusctl -c 60, which caps battery charge at 60% to save it 
