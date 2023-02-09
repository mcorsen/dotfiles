#!/usr/bin/env bash
if [[ ! -d ~/.oh-my-zsh ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
if [[ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi
if [[ ! -d ~/.oh-my-zsh/custom/zsh-syntax-highlighting ]]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    # git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/zsh-syntax-highlighting
fi
if [[ ! -f ~/.zshrc ]]; then
    cp .zshrc ~/
fi
if [[ ! -f ~/.vimrc ]]; then
    cp .vimrc ~/
fi
if [[ ! -f ~/.gitconfig ]]; then
    cp .gitconfig ~/
fi
#mkdir -p ~/.local/share/fonts
#font_name="Hack Regular Nerd Font Complete"
#curl https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf > ~/.local/share/fonts/"$font_name".ttf
#fc-cache -v
