#!/bin/bash
PATH=$PATH':/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
source ~/.zshrc
date

# list crontabs - crontab -l
# edit crontabs - crontab -e
# Required before you can run it
# sudo chown root:wheel ~/Development/Repos/home/zsh-env/tasks/daily.plist

/usr/local/bin/shallow-backup --new-path ~/Development/Repos/home/backup -backup-all 