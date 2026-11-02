# mise first: its tools (sheldon, starship, atuin, zoxide, carapace) must be on PATH below
eval "$(mise activate zsh)"

# --- ticket 02: sheldon source goes here ---

# --- ticket 03: vi-mode block goes here (must precede plugins and atuin) ---

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

# --- abbreviation definitions go here ---

for f in ~/.zshrc ~/.zprofile; do
  [[ -f $f && ! -L $f ]] && print -u2 "warning: stray $f exists; move its lines into \$ZDOTDIR ($ZDOTDIR) and delete it"
done
