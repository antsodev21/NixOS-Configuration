#!/bin/bash
#==COPIA-TODO-EN-DONDE-DEBE==#
# Primero los .files
mkdir ~/.config
cp .r config/* ~/.config

# Ahora la config de NixOS
sudo cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
