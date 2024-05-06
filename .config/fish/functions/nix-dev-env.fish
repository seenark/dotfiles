

function nix-dev-env

    set -l nodejs "󰎙 nodejs"
    set -l rust "󱘗 rust"
    set -l scala " scala"
    set -l gleam "⭐ Gleam"

    set -l items $nodejs $rust $scala $gleam
    set config (printf "%s\n" $items | fzf --prompt=" 󱃗 Select Your language = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$config"
        echo "Nothing selected"
        return 0
    else if test "$config" = $nodejs
        command nix flake init -t "github:seenark/nix-templates#nodejs"
    else if test "$config" = $gleam
        command nix flake init -t "github:seenark/nix-templates#gleam"
    else
        echo "there is no development template for $config yet"
    end

end
