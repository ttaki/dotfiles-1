# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -U promptinit; promptinit
zstyle :prompt:pure:git:stash show yes
prompt pure


# $(brew --prefix)/opt/fzf/install
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/etc/profile.d/z.sh

# Aliases
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ip='ip -c'
alias rm='rm -i'
alias f='ranger'
alias c='cmus'
alias h='htop'
alias vi='nvim'
alias vim='nvim'
alias cat='bat'
alias lzd='lazydocker'
alias python='python3'
alias pip='pip3'
# Show OS info when opening a new terminal
neofetch

