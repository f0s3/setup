#!/bin/bash

pacman-key --init
pacman-key --populate archlinux
pacman -Sy archlinux-keyring --noconfirm
archinstall --config ./config.json --creds ./creds.json
