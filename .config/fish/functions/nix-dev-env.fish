function nix-dev-env

    set -l nodejs_nix "󰎙 nodejs-nix"
    set -l nodejs_mise "󰎙 nodejs-mise"
    set -l nodejs18 "󰎙 nodejs v18"
    set -l bun "🍞 bun"
    set -l rust "󱘗 rust"
    set -l scala " scala"
    set -l gleam "⭐ Gleam"
    set -l elixir " Elixir"

    set -l items $nodejs_nix $nodejs_mise $nodejs18 $bun $rust $scala $gleam $elixir
    set config (printf "%s\n" $items | fzf --prompt=" 󱃗 Select Your language = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$config"
        echo "Nothing selected"
        return 0
    else if test "$config" = $nodejs_nix
        command nix flake init -t "github:seenark/nix-templates#nodejs-nix"
    else if test "$config" = $nodejs_mise
        command nix flake init -t "github:seenark/nix-templates#nodejs-mise"
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
