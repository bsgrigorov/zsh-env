#!/bin/bash

source $PWD/common/path.sh
source $PWD/common/autocomplete.sh
source $PWD/common/alias.sh
source $PWD/common/ps1.sh
source $PWD/common/functions.sh
source $PWD/common/git.sh


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

