Run commands on a schedule

```shell
crontab -e
```

```shell
MAILTO=''
SHELL=/bin/zsh
0 0 * * 0 zsh ~/Development/Repos/home/zsh-env/tasks/weekly.sh > ~/Development/Repos/home/zsh-env/tasks/weekly.log 2>&1
```