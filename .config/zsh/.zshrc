# mise first: its tools (sheldon, starship, atuin, zoxide, carapace) must be on PATH below
eval "$(mise activate zsh)"

# vi mode must precede sheldon: zsh-abbr binds space with a bare `bindkey` (= current main keymap), so main must already be viins
bindkey -v
KEYTIMEOUT=1

bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M viins '^W' backward-kill-word
bindkey -M viins '^U' kill-whole-line

# cursor: beam in insert, block in normal; defined before starship init, which wraps zle-keymap-select
autoload -Uz add-zsh-hook
_cursor_beam() { print -n '\e[6 q' }
zle-keymap-select() { [[ $KEYMAP == vicmd ]] && print -n '\e[2 q' || _cursor_beam }
zle -N zle-keymap-select
zle -N zle-line-init _cursor_beam
add-zsh-hook preexec _cursor_beam

autoload -Uz select-quoted select-bracketed surround edit-command-line
zle -N select-quoted
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do bindkey -M $m $c select-quoted; done
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do bindkey -M $m $c select-bracketed; done
done
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -M vicmd cs change-surround
bindkey -M vicmd ds delete-surround
bindkey -M vicmd ys add-surround
bindkey -M visual S add-surround

# builtin edit-command-line only replaces the buffer; accept-line makes `:wq` run it (gives up charwise `v` visual; `V` remains)
zle -N edit-command-line
edit-and-run() { zle edit-command-line && zle accept-line }
zle -N edit-and-run
bindkey -M vicmd v edit-and-run

# abbr (eager) before compinit; autosuggestions + fast-syntax-highlighting are zsh-defer'd
eval "$(sheldon source)"

setopt NO_NOMATCH

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'
source <(carapace _carapace zsh)

eval "$(starship init zsh)"
eval "$(atuin init zsh)"
bindkey -M vicmd '^R' atuin-search-vicmd
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
