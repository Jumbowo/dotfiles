#!/bin/zsh

echo "Running install script..."

# Command Line Tools
echo "Installing command line tools..."
xcode-select --install

# Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew analytics off

## Taps
echo "Tapping taps..."
brew tap homebrew/cask-fonts
brew tap felixkratz/formulae
brew tap koekeishiya/formulae

## Formulae
echo "Installing formulae..."
brew install borders
brew install btop
brew install cmake
brew install curl
brew install fd
brew install ffmpeg
brew install fzf
brew install gcc
brew install git
brew install go
brew install gobuster
brew install grip
brew install hashcat
brew install john
brew install jq
brew install lua
brew install luajit
brew install neovim
brew install nmap
brew install node
brew install numpy
brew install oath-toolkit
brew install openjdk
brew install openvpn
brew install php
brew install pyenv
brew install r
brew install ripgrep
brew install sketchybar
brew install skhd
brew install tmux
brew install tree
brew install tree-sitter
brew install wget
brew install yabai
brew install youtube-dl
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-syntax-highlighting

## Casks
echo "Installing casks..."
brew install --cask alacritty
brew install --cask alfred
brew install --cask firefox@developer-edition
brew install --cask font-hack-nerd-font
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask google-chrome
brew install --cask karabiner-elements
brew install --cask libreoffice
brew install --cask linearmouse
brew install --cask protonvpn
brew install --cask spotify
brew install --cask tor-browser
brew install --cask transmission
brew install --cask wireshark

# MacOS Settings
echo "Modifying some settings..."
defaults write com.apple.dock autohide -bool true
defaults write com.apple.Finder AppleShowAllFiles -bool true
