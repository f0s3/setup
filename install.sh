#!/bin/bash

curl -sSfL https://raw.githubusercontent.com/f0s3/setup/refs/heads/main/config.json -o config.json
curl -sSfL https://raw.githubusercontent.com/f0s3/setup/refs/heads/main/creds.json -o creds.json

pacman-key --init
pacman-key --populate archlinux
pacman -Sy archlinux-keyring --noconfirm
pacman -S --noconfirm vim

vim creds.json && archinstall --config ./config.json --creds ./creds.json
