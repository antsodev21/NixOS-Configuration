#!/bin/bash
#==COPIA-TODO-EN-DONDE-DEBE==#
# Primero los .files
mkdir ~/.config
cp .r config/* ~/.config

# Ahora la config de NixOS
sudo cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch

# Instala OhMyBash y Copia mi .bashrc
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
cp .bashrc ~/
