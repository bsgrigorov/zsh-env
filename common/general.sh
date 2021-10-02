#!/bin/bash

source $ZSHENV/common/path.sh
source $ZSHENV/common/autocomplete.sh
source $ZSHENV/common/alias.sh
source $ZSHENV/common/ps1.sh
source $ZSHENV/common/functions.sh
source $ZSHENV/common/git.sh


# Programs
export PYTHON2_EXE=/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/home
export BASH_SILENCE_DEPRECATION_WARNING=1

# set ctrl + r for hstr instead of reverse search
# bind '"\C-r": "\C-a hstr -- \C-j"' # bash
bindkey -s "\C-r" "\C-a hstr -- \C-j"
ln -sfn ~/Development/Repos/home/BrewUp/brewup.sh /usr/local/bin/brewup


# git user global config settings
export GIT_USER_NAME=Borislav Grigorov

