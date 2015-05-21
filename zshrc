#
# General zsh configuration
#

if [ $TERM = "linux" ]; then
    export TERM="fbterm"
fi

export EDITOR=nano
export VISUAL=$EDITOR

HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=$HISTSIZE
COMPLETION_WAITING_DOTS="true"

setopt appendhistory
setopt autocd
setopt beep
setopt correctall
setopt extended_glob
setopt extended_history
setopt hist_ignore_all_dups
setopt inc_append_history
setopt nomatch
setopt notify
setopt share_history

zstyle ':completion:*:sudo::' environ PATH="/sbin:/usr/sbin:$PATH" HOME="/root"

bindkey -e

autoload -U compinit
compinit

alias ze='nano $HOME/.zshrc'
alias zr='source $HOME/.zshrc'

#
# Antigen zsh configuration
#
ZSHA_BASE=$HOME/.zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh

antigen-use oh-my-zsh

antigen-bundle colored-man
antigen-bundle colorize
antigen-bundle composer
antigen-bundle copydir
antigen-bundle copyfile
antigen-bundle docker
antigen-bundle emoji-clock
antigen-bundle git
antigen-bundle github
antigen-bundle sudo
antigen-bundle taskwarrior
antigen-bundle vagrant
antigen-bundle wd
antigen-bundle z
antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle zsh-users/zsh-syntax-highlighting

antigen-theme agnoster

antigen apply
