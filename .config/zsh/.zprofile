eval "$(/opt/homebrew/bin/brew shellenv)"

# OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

typeset -U path
path=($HOME/.local/bin $path $HOME/.lmstudio/bin)
