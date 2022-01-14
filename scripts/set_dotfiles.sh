#!/bin/bash

# creating symlink for .zshrc file
EXISTING_ZSHRC_FILE="$(pwd)/dotfiles/.zshrc"
if [ -f $EXISTING_ZSHRC_FILE ]
then
ln -s -f "$(pwd)/dotfiles/.zshrc" "$HOME/.zshrc"
else
echo "existing .zshrc file not found"
fi