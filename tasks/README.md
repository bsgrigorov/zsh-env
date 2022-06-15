Run commands on a schedule

```shell
crontab -e
```

```shell
MAILTO=''
SHELL=/bin/zsh
0 0 * * 0 zsh ~/dev/repos/home/zsh-env/tasks/weekly.sh > ~/dev/repos/home/zsh-env/tasks/weekly.log 2>&1
```


Prereqs:
Install https://github.com/alichtman/shallow-backup 
```
pip3 install shallow-backup
```