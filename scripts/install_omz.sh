#!/bin/bash

# installing zsh and git
sudo pacman -S --needed git zsh
# setting zsh as the default shell
chsh -s $(which zsh)

# installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# installing zsh-syntax-highlighting plugin
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# installing zsh-autosuggestions plugin
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# path to .zshrc file
ZSHRCPATH="$HOME/.zshrc"

# adding manually installed plugins to .zshrc file
# this step is not neccessary if you copy the existing .zshrc from dotfiles
if [ -f ZSHRCPATH ] 
then 
sed -E -i 's/^plugins=.+/plugins=\(git kubectl zsh-autosuggestions zsh-syntax-highlighting\)/' ZSHRCPATH
else 
echo '.zshrc file not found. edit the file manually'
fi


# creating softlink for existing .zshrc file
EXISTING_ZSHRC_FILE="$(pwd)/dotfiles/.zshrc"
if [ -f $EXISTING_ZSHRC_FILE ]
then
ln -s -f "$(pwd)/dotfiles/.zshrc" "$HOME/.zshrc"
else
echo "existing .zshrc file not found"
fi