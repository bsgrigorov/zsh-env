# Git convert https to ssh
# git remote set-url origin $(git remote get-url origin | sed 's/^https:\/\/\([^\/]*\)\/\(.*\).git/git@\1\:\2.git/')

# Git convert ssh to https
# git remote set-url origin $(git remote get-url origin | sed 's/^git@\(.*\):\/*\(.*\).git/https:\/\/\1\/\2.git/')


gogit(){
  open $(git remote get-url origin | sed 's/^git@\(.*\):\/*\(.*\).git/https:\/\/\1\/\2.git/')
}