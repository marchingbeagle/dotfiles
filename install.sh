#!/usr/bin/env bash

#git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
#git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin

sudo pacman -Syu

echo "-------------------------------------------------"
echo "Installing yay"
echo "-------------------------------------------------"

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "-------------------------------------------------"
echo "Audio Drivers"
echo "-------------------------------------------------"

pacman -S mesa-utils pavucontrol pipewire pipewire-alsa pipewire-pulse --noconfirm --needed

systemctl enable NetworkManager bluetooth
systemctl --user enable pipewire pipewire-pulse

echo "--------------------------------------"
echo "-- Bootloader Installation  --"
echo "--------------------------------------"

pacman -S grub efibootmgr --noconfirm --needed

cd /home/erik
git clone https://github.com/marchingbeagle/dotfiles


echo "--------------------------------------"
echo "-- Needed aplications  --"
echo "--------------------------------------"

pacman -S networkmanager i3 rofi xorg xorg-xdm dmenu i3status i3lock ttf-dejavu code neovim kitty tlp tlpui cowsay nyancat neofetch polybar picom feh flameshot --noconfirm --needed

yes | yay -S zen-browser-bin --noconfirm 

echo "-------------------------------------------------"
echo "Install Complete, You can reboot now"
echo "-------------------------------------------------"

REALEND
