# mise first: its tools (sheldon, starship, atuin, zoxide, carapace) must be on PATH below
eval "$(mise activate zsh)"

# --- ticket 03: vi-mode block goes here (must precede sheldon: zsh-abbr binds space with a bare `bindkey`) ---

# abbr (eager) before compinit; autosuggestions + fast-syntax-highlighting are zsh-defer'd
eval "$(sheldon source)"

setopt NO_NOMATCH

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'
source <(carapace _carapace zsh)

eval "$(starship init zsh)"
eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"

export EDITOR=nvim
export VISUAL=nvim
export NVIM_APPNAME=nvim8
export BAT_THEME=TwoDark

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gca="git commit --amend"
alias glp="git log --oneline --graph --decorate --all"
alias k="kubectl"
alias z1="zellij -l ~/.config/zellij/layouts/z1.kdl"
alias z2="zellij -l ~/.config/zellij/layouts/z2.kdl"

function nvims() {
  items=("nvim-lazy2" "nvim-lazy" "chad-lazy" "default")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

bindkey -s ^n "nvims\n"

# session scope: re-source safe, nothing persisted to zsh-abbr's user file; --force because nl/ls/tree shadow real commands
abbr --session --force --quieter nl=nvim
abbr --session --force --quieter ls='eza -al --icons --group-directories-first --git'
abbr --session --force --quieter ..='cd ..'
abbr --session --force --quieter ...='cd ../..'
abbr --session --force --quieter tree="eza -T -L 2 -I 'node_modules|*.pyc'"
abbr --session --force --quieter nvimtemp="nvim +'enew | file [Scratch] | setlocal buftype=nofile bufhidden=wipe noswapfile'"
abbr --session --force --quieter zshreload='exec zsh'

for f in ~/.zshrc ~/.zprofile; do
  if [[ -f $f && ! -L $f ]]; then
    print -u2 "warning: stray $f exists; move its lines into \$ZDOTDIR ($ZDOTDIR) and delete it"
  fi
done
