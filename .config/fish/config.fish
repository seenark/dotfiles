if status is-interactive
    # Commands to run in interactive sessions can go here
end


###################### paths ######################
fish_add_path /opt/homebrew/bin
fish_add_path ~/.cargo/bin
fish_add_path /usr/local/bin
fish_add_path ~/.bun/bin
###################### paths ######################

###################### fnm fast node manager ######################
fnm env --use-on-cd | source
###################### fnm fast node manager ######################


###################### starship ######################
source (/opt/homebrew/bin/starship init fish --print-full-init | psub)
###################### starship ######################


###################### X Variable ######################
# set -x NVV_DIR ~/.nvm
###################### X Variable ######################

###################### NVIM ######################
# alias z1="zellij -l ~/.config/zellij/layouts/z1.kdl"
function nl
  env NVIM_APPNAME=nvim-lazy2 nvim
end

function z1 
  command zellij -l ~/.config/zellij/layouts/z1.kdl $argv
end
# alias z2="zellij -l ~/.config/zellij/layouts/z2.kdl"
function z2 
  command zellij -l ~/.config/zellij/layouts/z2.kdl $argv
end

function nvims
    set -l items "nvim-lazy2" "nvim-lazy" "chad-lazy" "default"
    set -l config (printf "%s\n" $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
    
    if test -z "$config"
        echo "Nothing selected"
        return 0
    else if test "$config" = "default"
        set config ""
    end

    env NVIM_APPNAME=$config nvim $argv
end

bind \cn "nvims"
###################### NVIM ######################

###################### Git ######################
# alias gs="git status"
function gs
  command git status
end

# alias gca="git commit --amend"
function gca
  command git commit --amend
end

# Git status
function gs
  git status $argv
end

# Git add all changes
function ga
    git add --all $argv
end

# Git commit with message
function gc
    git commit -m $argv
end

# Git push
function gp
    git push $argv
end

# Git pull
function gl
    git pull $argv
end

# Git branch
function gb
    git branch $argv
end

# Git checkout branch
function gco
    git checkout $argv
end

# Git merge branch
function gm
    git merge $argv
end

# alias glp="git log --oneline --graph --decorate --all"
function glp
  command git log --oneline --graph --decorate --all
end
###################### Git ######################

###################### EXA ######################
# alias ls="exa -al --icons --group-directories-first --git"
function ls
  command exa -al --icons --group-directories-first --git $argv
end
# alias tree="exa -T -L 2 -I 'node_modules|*.pyc'"
function tree
  command exa -T -L 2 -I 'node_modules|*.pyc' $argv
end
###################### EXA ######################

###################### KUBECTL ######################
function k
  command kubectl $argv
end
###################### KUBECTL ######################


