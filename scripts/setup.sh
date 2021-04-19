#!/usr/bin/env bash

# Make chrome the default browser
open -a "Google Chrome" --args --make-default-browser

# Setup oh-my-zsh and theme
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# p10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# p10k font
mkdir font-files
cd font-files
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -OL
open MesloLGS%20NF%20Regular.ttf
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -OL
open MesloLGS%20NF%20Bold.ttf
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -LO
open MesloLGS%20NF%20Italic.ttf
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -OL
open MesloLGS%20NF%20Bold%20Italic.ttf

# SSH key for github
ssh-keygen -t ed25519 -C "jacob@moorman.me" -f ~/.ssh/sshkey -q -N "github"

chrome https://github.com/settings/keys
