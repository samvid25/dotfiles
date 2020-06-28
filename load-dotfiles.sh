#!/bin/bash

dotfiles_dir=~/dotfiles


# Delete existing dot files and folders
#--------------------------------------------------------------------------------------------
# sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.environment > /dev/null 2>&1
sudo rm -rf ~/.aliases > /dev/null 2>&1
sudo rm -rf ~/.p10k.zsh > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.config/Code/User/settings.json > /dev/null 2>&1
# sudo rm -rf ~/.config/cairo-dock/current_theme/ > /dev/null 2>&1
# sudo rm -rf ~/.config/cairo-dock/themes/wowtheme > /dev/null 2>&1
#--------------------------------------------------------------------------------------------


# Create symlinks
#--------------------------------------------------------------------------------------------
# ln -sf $dotfiles_dir/bash/.bashrc ~/.bashrc
ln -sf $dotfiles_dir/zsh/.environment ~/.environment
ln -sf $dotfiles_dir/zsh/.aliases ~/.aliases
ln -sf $dotfiles_dir/zsh/.p10k.zsh ~/.p10k.zsh
ln -sf $dotfiles_dir/zsh/.zshrc ~/.zshrc
ln -sf $dotfiles_dir/git/.gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/vscode/settings.json ~/.config/Code/User/settings.json
# ln -sf $dotfiles_dir/cairo-dock/wowtheme/* ~/.config/cairo-dock/current_theme
# ln -sf $dotfiles_dir/cairo-dock/wowtheme/* ~/.config/cairo-dock/themes/wowtheme
#--------------------------------------------------------------------------------------------


# Set zsh as the default shell
#--------------------------------------------------------------------------------------------
sudo chsh -s $(which zsh) $(whoami)   # reboot / logout and login required after shell change
#--------------------------------------------------------------------------------------------