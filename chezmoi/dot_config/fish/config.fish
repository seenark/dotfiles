status is-interactive; and begin
    # set -g NVIM_APPNAME nvim-lazy5
    # abbr --add -- nl nvim
    abbr --add -- .. 'cd ..'
    abbr --add -- ... 'cd ../..'
    abbr --add -- .... 'cd ../../..'
    abbr --add -- ..... 'cd ../../../..'
    abbr --add -- fishreload 'source ~/.config/fish/config.fish'
    abbr --add -- b bun
    abbr --add -- c code
    abbr --add -- exsubmit 'exercism submit'
    abbr --add -- extest 'exercism test'
    abbr --add -- gcap 'git add . && git commit --amend --no-edit && git push -f'
    abbr --add -- hostsfile 'sudo NVIM_APPNAME=nvim-lazy5 nvim /etc/hosts'
    abbr --add -- ls 'eza -al --icons --group-directories-first --git'
    abbr --add -- nixgc 'nix-store --gc'
    abbr --add -- pm pnpm
    abbr --add -- spf superfile
    abbr --add -- tree 'eza -T -L 2 -I '\''node_modules|*.pyc'\'''
    abbr --add -- yn yarn
    abbr --add -- brewbundleinstall 'brew bundle --file=~/.dotfiles/.config/brew/Brewfile install'
    abbr --add -- brewbundleclean 'brew bundle --file=~/.dotfiles/.config/brew/Brewfile cleanup --force'
end

# ╭──────────────────────────────────────────────────────────╮
# │ Alias                                                    │
# ╰──────────────────────────────────────────────────────────╯
# ╭─ Alias ────────────────────────────────────────────────────────────╮

# alias ls="eza -al --icons --group-directories-first --git"

# ╰─ Alias ────────────────────────────────────────────────────────────╯

# ╭─ Additional paths ─────────────────────────────────────────────────╮

fish_add_path /opt/homebrew/bin

# ╰─ Additional paths ─────────────────────────────────────────────────╯

# ╭─ Starship ─────────────────────────────────────────────────────────╮

source (/opt/homebrew/bin/starship init fish --print-full-init | psub)

# ╰─ Starship ─────────────────────────────────────────────────────────╯


# ╭─ Neovim ───────────────────────────────────────────────────────────╮

function nl
    env NVIM_APPNAME=nvim-lazy5 nvim
end

# ╰─ Neovim ───────────────────────────────────────────────────────────╯

# ╭─ Atuin ────────────────────────────────────────────────────────────╮

atuin init fish | source

# ╰─ Atuin ────────────────────────────────────────────────────────────╯

# ╭─ Zoxide ───────────────────────────────────────────────────────────╮

zoxide init fish | source

# ╰─ Zoxide ───────────────────────────────────────────────────────────╯


# ╭─ Bat ──────────────────────────────────────────────────────────────╮

function bat
    command bat --color=always --theme=TwoDark $argv
end

function batdiff
    git diff --name-only --relative --diff-filter=d | xargs bat --diff
end

# ╰─ Bat ──────────────────────────────────────────────────────────────╯
