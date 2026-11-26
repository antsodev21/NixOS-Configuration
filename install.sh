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

# Instala mis programas en flatpak
flatpak remote-add --user --if-not-exists freesmlauncher https://flatpak.freesmlauncher.org/freesmlauncher.flatpakrepo
flatpak install --user freesmlauncher org.freesmlauncher.FreesmLauncher
flatpak install org.raspberrypi.rpi-imager ru.linux_gaming.PortProton org.vinegarhq.Sober

# Avisa de la existencia de mis apps en AppImage
echo "No olvides instalar las apps : Osu! y Lynx-Share desde AppImage"
