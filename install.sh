#!/bin/bash

DOTFILES_DIR=$(pwd)

echo "Applying dotfiles..."

if [ $CODESPACES ]; then

  echo "Installing utilities..."
  
  sudo apt update
  sudo apt-get install -y \
    vim
fi

ln -s ${DOTFILES_DIR}/gitconfig ~/.gitconfig

alias squash='git rebase -i HEAD~"$1"'
echo "done!"
