# # The next line updates PATH for the Google Cloud SDK.
# if [ -f "$HOME/Software/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/Software/google-cloud-sdk/path.bash.inc"; fi
# # The next line enables shell command completion for gcloud.
# if [ -f "$HOME/Software/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/Software/google-cloud-sdk/completion.bash.inc"; fi
# # source <(kubectl completion bash)
# [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# complete -C /usr/local/bin/vault vault
# complete -C '/usr/local/bin/aws_completer' aws

source <(kubectl completion zsh)


export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion