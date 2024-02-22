if status is-interactive
    # Commands to run in interactive sessions can go here
end


###################### paths ######################
fish_add_path /opt/homebrew/bin
fish_add_path ~/.cargo/bin
fish_add_path /usr/local/bin
fish_add_path ~/.bun/bin
fish_add_path ~/.emacs.d/bin
###################### paths ######################

###################### fnm fast node manager ######################
fnm env --use-on-cd | source
###################### fnm fast node manager ######################

###################### atuin shell history ######################
atuin init fish | source
###################### atuin shell history ######################

###################### zoxide ######################
zoxide init fish | source
###################### zoxide ######################

###################### starship ######################
source (/opt/homebrew/bin/starship init fish --print-full-init | psub)
###################### starship ######################


###################### X Variable ######################
# set -x NVV_DIR ~/.nvm
###################### X Variable ######################

###################### NVIM ######################
# alias z1="zellij -l ~/.config/zellij/layouts/z1.kdl"
function nl
    env NVIM_APPNAME=nvim-lazy4 nvim
end

function z1
    command zellij -l ~/.config/zellij/layouts/z1.kdl $argv
end
# alias z2="zellij -l ~/.config/zellij/layouts/z2.kdl"
function z2
    command zellij -l ~/.config/zellij/layouts/z2.kdl $argv
end

function nvims
    set -l items nvim-lazy2 nvim-lazy chad-lazy default
    set -l config (printf "%s\n" $items | fzf --prompt=" Neovim Config = " --height=~50% --layout=reverse --border --exit-0)

    if test -z "$config"
        echo "Nothing selected"
        return 0
    else if test "$config" = default
        set config ""
    end

    env NVIM_APPNAME=$config nvim $argv
end

bind \cn nvims
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

# delete branch remote
function git-del-remote
    git push --delete origin $argv
end
###################### Git ######################

###################### EXA ######################
# alias ls="exa -al --icons --group-directories-first --git"
function ls
    command eza -al --icons --group-directories-first --git $argv
end
# alias tree="exa -T -L 2 -I 'node_modules|*.pyc'"
function tree
    command eza -T -L 2 -I 'node_modules|*.pyc' $argv
end
###################### EXA ######################

###################### KUBECTL ######################
function k
    command kubectl $argv
end
###################### KUBECTL ######################

###################### BUN ######################
function bunadd
    command bun add --backend copyfile $argv
end
function buni
    command bun i --backend copyfile $argv
end
###################### BUN ######################

###################### Home brew ######################
function brewfont
    command brew install --cask $argv
end
###################### Home brew ######################


###################### PROLAB SSH ######################
function plcp
    env PROLAB_SERVER_PASSWORD=prolab@30451
    command scp -r prolab@161.82.188.163:$argv
end
function plpass
    env PROLAB_SERVER_PASSWORD=prolab@30451
    echo $PROLAB_SERVER_PASSWORD
end
###################### PROLAB SSH ######################
