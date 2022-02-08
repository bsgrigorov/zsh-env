#!/bin/bash

source $ZSHENV/common/path.sh
source $ZSHENV/common/autocomplete.sh
source $ZSHENV/common/alias.sh
source $ZSHENV/common/ps1.sh
source $ZSHENV/common/functions.sh
source $ZSHENV/common/git.sh
source $ZSHENV/common/k8s.sh

## Programs
export PYTHON2_EXE=/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/home
export BASH_SILENCE_DEPRECATION_WARNING=1

ln -sfn ~/Development/Repos/home/BrewUp/brewup.sh /usr/local/bin/brewup
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Bindkeys
# bind '"\C-r": "\C-a hstr -- \C-j"' # bash
# set ctrl + r for hstr instead of reverse search
bindkey -s "\C-r" "\C-a hstr -- \C-j"
bindkey "ç" fzf-cd-widget

zle     -N   vs
bindkey '^V' vs

# zle     -N   ktx
# bindkey '^K' ktx


# git user global config settings
export GIT_USER_NAME=Borislav Grigorov

PROMPT_EOL_MARK='' # removes % sign from output of commands https://unix.stackexchange.com/questions/167582/why-zsh-ends-a-line-with-a-highlighted-percent-symbol 