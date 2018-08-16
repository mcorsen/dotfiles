#!/usr/bin/env bash
if [[ ! -d ~/.oh-my-zsh ]]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
if [[ ! -d ~/.oh-my-zsh/custom/themes/powerlevel9k ]]; then
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi
if [[ ! -d ~/.oh-my-zsh/custom/zsh-syntax-highlighting ]]; then
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/zsh-syntax-highlighting
fi
cp .zshrc ~/
cp .vimrc ~/
cp .gitconfig ~/
