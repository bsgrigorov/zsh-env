# Shell config for ZSH
This is a shell config repo with lots of scripts, functions, aliases, shell prompts and other functionality.

Source it in your `~/.zshrc` file using
```
source /path/to/repo/base.sh
```

Available commands
```
ktx cluster-name # find and select clustername
kns namespace # find and select namespace for your cluster

```


Install brew
install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install Plugins
```
git clone https://github.com/unixorn/warhol.plugin.zsh.git warhol
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```

Enable fuzzy finder bindings

https://github.com/junegunn/fzf#using-homebrew
```
$(brew --prefix)/opt/fzf/install
```

VScode cloud settings are stored in gist 

https://gist.github.com/bsgrigorov/bcd5a5286fbb4e2548ef10b0686deac0

Install fork command line tools from fork preferences