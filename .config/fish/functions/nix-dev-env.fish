

function nix-dev-env

    set -l nodejs "󰎙 nodejs"
    set -l rust "󱘗 rust"
    set -l scala " scala"

    set -l items $nodejs $rust $scala
    set config (printf "%s\n" $items | fzf --prompt=" 󱃗 Select Your language = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$config"
        echo "Nothing selected"
        return 0
    else if test "$config" = $nodejs
        command nix flake init -t "github:seenark/nix-templates#nodejs"
    else
        echo "there is no development template for $config yet"
    end

end
