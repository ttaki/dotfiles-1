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

function setupAnsible() {
    ansible-galaxy install nginxinc.nginx
    ansible-galaxy install geerlingguy.apache                                                                               
    ansible-galaxy install geerlingguy.mysql                                                                               
    ansible-galaxy install geerlingguy.phpmyadmin     
}

function setupTmux() {
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

function setupNode() {
    mkdir -p "$HOME/.node_modules"
    yarn global add @openapitools/openapi-generator-cli
    yarn global add eslint-cli
    yarn global add js-beautify
}

#!/usr/bin/env bash
function setupPython() {
  pip install --upgrade pip
  python -m venv ${HOME}/venv/pydev
  ${HOME}/venv/pydev/bin/pip install --upgrade pip
  ${HOME}/venv/pydev/bin/pip install -r requirements.txt
}

function setupPHP() {
	composer global require vimeo/psalm
}

setUPZsh
installSpaceVim
setupAnsible
setupTmux
setupNode
setupPython
setupPHP