#!/bin/bash

curl https://github.com/f0s3/setup/blob/main/config.json -o config.json
curl https://github.com/f0s3/setup/blob/main/creds.json -o creds.json

pacman-key --init
pacman-key --populate archlinux
pacman -Sy archlinux-keyring --noconfirm
pacman -S --noconfirm vim

vim creds.json && archinstall --config ./config.json --creds ./creds.json
