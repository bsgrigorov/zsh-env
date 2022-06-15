# Aliases
# alias sc="source ~/.bash_profile"
alias sc="source ~/.zshrc"
alias zenv="code $DEVENV/home/zsh-env ~/.zshrc"
alias zshenv="code ~/.zshrc"
alias codebash="code ~/.bash_profile"
alias dev="cd $DEVENV"
alias docs="cd ~/Documents"
alias home="cd ~"
alias ls='ls -GFhla'
alias ll='ls -la'
alias lsg='ll | grep $1'
alias cd..='cd ..'
alias ..='cd ..'
alias h='history'
alias python="python3"
alias pip="pip3"
alias neo="neo.sh"
alias d="docker"
alias dc="docker-compose"
alias gs="git status"
alias helm3="helm"
alias ap="ansible-playbook"
alias av="ansible-vault"
alias tf="terraform"
alias is="istioctl"
alias hs='history | grep'
alias gc='gcmsg'
alias coin="cd $DEVENV/coinbase"


alias k="kubectl"
alias mk="minikube"
alias prom="open http://localhost:8080 && k -n kube-system port-forward service/prometheus-prometheus 8080:80"

# alias kns='kubens'
