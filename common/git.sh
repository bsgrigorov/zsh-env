# Git convert https to ssh
# git remote set-url origin $(git remote get-url origin | sed 's/^https:\/\/\([^\/]*\)\/\(.*\).git/git@\1\:\2.git/')

# Git convert ssh to https
# git remote set-url origin $(git remote get-url origin | sed 's/^git@\(.*\):\/*\(.*\).git/https:\/\/\1\/\2.git/')


gogit(){
  open $(git remote get-url origin | sed 's/^git@\(.*\):\/*\(.*\).git/https:\/\/\1\/\2.git/')
}


vs() {

  OIFS="$IFS"
  IFS=$'*'

  ARG_STR="*$**"
  WORKSPACES_ARG_STR="*$**.code-workspace"
  REPO_LOCATION=~/Development/Repos

  WORKSPACES=$(find $REPO_LOCATION -name ${WORKSPACES_ARG_STR} -prune -maxdepth 3 )
  if [[ -n "$WORKSPACES" ]]; then
    WORKSPACE=$(echo $WORKSPACES | sed 1q)
    code $WORKSPACE
  else
    FILTERED_REPOS=$(find $REPO_LOCATION -name .git -ipath $ARG_STR -type d -prune -exec dirname {} \; -maxdepth 3 )

    REPO=$(echo $FILTERED_REPOS | sed 1q)
    code $REPO
  fi
  
  IFS="$OIFS"


  # if [[ $FILTERED_REPOS == *$'\n'* ]]; then
  #   kubectx $CURRENT_CONTEXT > /dev/null
  # else
  #   KUBECONFIG=$DEFAULT_KUBECONFIG
  #   kubectx $FILTERED_CONTEXT_NAMES
  # fi

}