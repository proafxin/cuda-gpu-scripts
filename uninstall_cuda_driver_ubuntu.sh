#!/usr/bin/bash

sudo apt-get --purge remove "*cublas*" "cuda*" "nsight*"
sudo apt-get --purge remove "*nvidia*"
sudo apt autoremove
sudo update-grub

