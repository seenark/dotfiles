

function nix-dev-env

    set -l nodejs "󰎙 nodejs"
    set -l nodejs18 "󰎙 nodejs v18"
    set -l bun "🍞 bun"
    set -l rust "󱘗 rust"
    set -l scala " scala"
    set -l gleam "⭐ Gleam"
    set -l elixir " Elixir"

    set -l items $nodejs $nodejs18 $bun $rust $scala $gleam $elixir
    set config (printf "%s\n" $items | fzf --prompt=" 󱃗 Select Your language = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$config"
        echo "Nothing selected"
        return 0
    else if test "$config" = $nodejs
        command nix flake init -t "github:seenark/nix-templates#nodejs"
    else if test "$config" = $nodejs18
        command nix flake init -t "github:seenark/nix-templates#nodejs_18"
    else if test "$config" = $gleam
        command nix flake init -t "github:seenark/nix-templates#gleam"
    else if test "$config" = $bun
        command nix flake init -t "github:seenark/nix-templates#bun"
    else if test "$config" = $elixir
        command nix flake init -t "github:seenark/nix-templates#elixir"
    else
        echo "there is no development template for $config yet"
    end

end
