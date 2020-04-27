#!/usr/bin/env bash

function setUPZsh() {
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    chsh -s /bin/zsh

    # install pure prompt
    yarn global add pure-prompt 
}

function installSpaceVim() {
    curl -sLf https://spacevim.org/install.sh | bash
}

function setupTmux() {
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

setUPZsh
installSpaceVim