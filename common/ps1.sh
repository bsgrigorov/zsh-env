# Changes shell prompt
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
# export PS1="\[\033[36m\]\u:\[\033[33;1m\]\w\[\033[m\]\$ "


parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# parse_git_files_diff() {
#   git diff --name-status HEAD 2> /dev/null | wc -l | sed -r 's/^[ \t]*//'
# }
# \[\033[31m\]$(parse_git_files_diff)

NEWLINE=$'\n'
export PS1="%F{yellow}%~%f"
export PS1='$(kube_ps1):${NEWLINE}'$PS1
export PS1=$PS1"%F{green}\$(parse_git_branch)%f${NEWLINE}\$ "
export RPROMPT="%F{250}%*%f"
# export PROMPT=$PS1"\[\033[32m\]\$(parse_git_branch)\[\033[00m\]\n\$ "


export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
# zstyle ':vcs_info:git:*' formats '%F{240}%T%f'
# zstyle ':vcs_info:*' enable git