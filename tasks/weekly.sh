#!/bin/bash
PATH=$PATH':/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
source ~/.zshrc
date

# list crontabs - crontab -l
# edit crontabs - crontab -e

# sh /Users/i853090/Development/Repos/home/BrewUp/brewup.sh
brewup

shallow-backup --new-path ~/Development/Repos/home/backup -backup-all 