#!/bin/sh

if [ ! -f "$ZSH/oh-my-zsh.sh" ]; 
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Oh My ZSH already installed."
fi