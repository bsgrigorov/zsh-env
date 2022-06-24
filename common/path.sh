# PATH
export PATH
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

pathadd "/Library/Frameworks/Python.framework/Versions/3.7/bin"
pathadd "$HOME/Software/"
pathadd "$HOME/Library/Python/3.9/bin"
pathadd "/usr/local/bin/aws_completer"
pathadd "/usr/local/opt/helm@2/bin"
pathadd "/usr/local/opt/openssl@1.1/bin"
pathadd "/usr/local/opt/yq@3/bin"
pathadd "${KREW_ROOT:-$HOME/.krew}/bin"
pathadd "/usr/local/opt/openjdk/bin"
pathadd "/usr/local/opt/gnu-sed/libexec/gnubin"
pathadd "$HOME/bin"
