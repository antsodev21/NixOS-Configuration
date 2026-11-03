#!/bin/bash
#==COPIA-TODO-EN-DONDE-DEBE==#
# Ahora la config de NixOS
sudo cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch

# Copia el archivo de configuracion de Kitty
cp -r config/* ~/.config

fish << 'EOF'
# Instala el gestor de plugins fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Instala plugins adicionales
fisher install jorgebucaran/fisher
fisher install IlanCosman/tide@v6
EOF

# Avisa de la existencia de mis apps en AppImage
echo "No olvides instalar las apps : Osu!, SKlauncher y Raspberry Pi Imager desde AppImage"
