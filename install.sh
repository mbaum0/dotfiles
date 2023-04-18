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
cat ${DOTFILES_DIR}/dot_bashrc >> ~/.bashrc

echo "done!"
