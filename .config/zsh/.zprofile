# static copy of `brew shellenv zsh` (spawning brew, a Ruby shim, cost ~30 ms per login); re-sync if Homebrew moves
typeset -U path fpath
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
fpath[1,0]="/opt/homebrew/share/zsh/site-functions"
export FPATH
path=(/opt/homebrew/bin /opt/homebrew/sbin $path)
[ -z "${MANPATH-}" ] || { export MANPATH="${MANPATH%"${MANPATH##*[!:]}"}"; export MANPATH=":${MANPATH#"${MANPATH%%[!:]*}"}"; }
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"

# OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# ~/.bun/bin (omp) and libpq came from fish's universal fish_user_paths, which zsh never sees
path=($HOME/.local/bin $HOME/.bun/bin $path /opt/homebrew/opt/libpq/bin $HOME/.lmstudio/bin)
