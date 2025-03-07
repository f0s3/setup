#!/bin/bash

curl -sSfL https://raw.githubusercontent.com/f0s3/setup/refs/heads/main/config.json -o config.json

pacman-key --init
pacman-key --populate archlinux
pacman -Sy archlinux-keyring --noconfirm

archinstall --config ./config.json
