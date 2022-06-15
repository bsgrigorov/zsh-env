#!/bin/bash
PATH=$PATH':/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
source ~/.zshrc
date

# list crontabs - crontab -l
# edit crontabs - crontab -e
# Required before you can run it
# sudo chown root:wheel $DEVENV/home/zsh-env/tasks/daily.plist

/usr/local/bin/shallow-backup --new-path $DEVENV/home/backup -backup-all 