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
    abbr --add -- hostsfile 'sudo NVIM_APPNAME=nvim-lazy6 nvim /etc/hosts'
    abbr --add -- ls 'eza -al --icons --group-directories-first --git'
    abbr --add -- nixgc 'nix-store --gc'
    abbr --add -- pm pnpm
    abbr --add -- spf superfile
    abbr --add -- tree 'eza -T -L 2 -I '\''node_modules|*.pyc'\'''
    abbr --add -- yn yarn
    abbr --add -- brewbundleinstall 'brew bundle --file=~/.dotfiles/brew/Brewfile install'
    abbr --add -- brewi 'brew bundle --file=~/.dotfiles/brew/Brewfile install'
    abbr --add -- brewbundleclean 'brew bundle --file=~/.dotfiles/brew/Brewfile cleanup --force'
    abbr --add -- brewclean 'brew bundle --file=~/.dotfiles/brew/Brewfile cleanup --force'
    abbr --add -- ff 'ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -headers $h -i "$URL" -c copy "$filepath"'
    abbr --add -- claudemcp 'cd ~/Library/Application\ Support/Claude/'
end

# ╭──────────────────────────────────────────────────────────╮
# │ Homebrew completions                                     │
# ╰──────────────────────────────────────────────────────────╯
if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

# ╭──────────────────────────────────────────────────────────╮
# │ Alias                                                    │
# ╰──────────────────────────────────────────────────────────╯
# ╭─ Alias ────────────────────────────────────────────────────────────╮

# alias ls="eza -al --icons --group-directories-first --git"

# ╰─ Alias ────────────────────────────────────────────────────────────╯

# ╭─ Additional paths ─────────────────────────────────────────────────╮

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/libpq/bin

# ╰─ Additional paths ─────────────────────────────────────────────────╯

# ╭─ Starship ─────────────────────────────────────────────────────────╮

source (/opt/homebrew/bin/starship init fish --print-full-init | psub)

# ╰─ Starship ─────────────────────────────────────────────────────────╯

# ╭─ Neovim ───────────────────────────────────────────────────────────╮

function nl
    env NVIM_APPNAME=nvim-lazy7 nvim
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

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/atiwatseenark/.lmstudio/bin
# End of LM Studio CLI section
mise activate fish | source
