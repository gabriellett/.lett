#!/bin/bash

OS=$(uname)

echo "Hello there! This script will install lett's environment on your machine"

if [ "$OS" != "Darwin" ] && [ "$OS" != "Linux" ]; then
    echo "Error: Unsupported operating system '$OS'. Only Darwin and Linux are allowed."
    exit 1
fi

echo "Detected system is: $(os)"

if [ -d ~/init_files_before_dotlett ]; then
	echo "Backup directory already exists, please remove it or move it and run this install script again"
	exit 1
fi

echo "Starting by backing up all your current files to ~/init_files_before_dotlett...."
mkdir -p ~/init_files_before_dotlett/.config
mv ~/.zshrc ~/.alacritty.yml ~/.tmux.conf ~/.lett ~/init_files_before_dotlett/
mv ~/.config/nvim ~/init_files_before_dotlett/.config/

if [ "$OS" == "Darwin" ]; then
  echo "Backup done!"

  echo "Installing all tools from brew..."
  brew install fzf ripgrep alacritty rectangle alfred tmux zoxide neovim starship font-jetbrains-mono-nerd-font tree-sitter-cli
  brew install --cask spotify sip
elif [ "$OS" == "Linux" ]; then
  # echo "This installer will consider hyprland is already installed (until I actually configure it to install it)"
  echo "Run the following moves if you want to use the hypr config on this repo:"
  echo "mv ~/.config/elephant/desktopapplications.toml ~/.config/elephant/symbols.toml ~/.lett/.config/elephant/"
  echo "mv ~/.config/hypr/base.conf ~/.config/hypr/binds.conf ~/.config/hypr/hyprland.conf ~/.config/hypr/menus.conf ~/.config/hypr/monitors.conf ~/.lett/.config/hypr/"
  echo "mv ~/.config/waybar/config.jsonc ~/.config/waybar/scripts ~/.config/waybar/style.css ~/.lett/config/waybar/"
  echo "Backup done!"

  echo "Installing all tools from AUR..."
  pacman -Sy btop cliphist colordiff fastfetch fzf htop kitty neovim obsidian starship tmux

  # pacman -Sy waybar
  # yay -Sy elephant elephant-calc elephant-clipboard elephant-desktopapplications \
  #   elephant-files elephant-menus elephant-providerlist elephant-runner elephant-symbols \
  #   elephant-unicode elephant-websearch
  # yay -Sy aether brave-bin coolercontrol ente-auth-bin hyprpicker-git hyprshutdown spotify \
  #   walker wlogout xdg-terminal-exec xone-dkms
fi

echo "Now we are ready to clone the dotfiles"
git clone https://github.com/gabriellett/.lett ~/.lett

echo "Linking all the files to your home"
mkdir ~/.config
ln -s ~/.lett/.zshrc ~/.zshrc
ln -s ~/.lett/.tmux.conf ~/.tmux.conf
ln -s ~/.lett/.config/nvim ~/.config/nvim

if [ "$OS" == "Darwin" ]; then
  ln -s ~/.lett/.alacritty.yml ~/.alacritty.yml
elif [ "$OS" == "Linux" ]; then
  ln -s ~/.lett/.config/kitty ~/.config/kitty

  echo "Run the following links according to your setup: \n\n"

  echo "ln -s ~/.lett/.config/elephant/desktopapplications.toml ~/.config/elephant/desktopapplications.toml"
  echo "ln -s ~/.lett/.config/elephant/symbols.toml ~/.config/elephant/symbols.toml"

  echo "ln -s ~/.lett/.config/hypr/base.conf ~/.config/hypr/base.conf"
  echo "ln -s ~/.lett/.config/hypr/binds.conf ~/.config/hypr/binds.conf"
  echo "ln -s ~/.lett/.config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf"
  echo "ln -s ~/.lett/.config/hypr/menus.conf ~/.config/hypr/menus.conf"
  echo "ln -s ~/.lett/.config/hypr/monitors.conf ~/.config/hypr/monitors.conf"

  echo "ln -s ~/.lett/.config/waybar/scripts ~/.config/waybar/scripts"
  echo "ln -s ~/.lett/.config/waybar/config.jsonc ~/.config/waybar/config.jsonc"
  echo "ln -s ~/.lett/.config/waybar/style.css ~/.config/waybar/style.css"
fi
echo "We are done! Open neovim to install the plugins."

