function nix-dev-env

    set -l nodejs_nix "󰎙 nodejs-nix"
    set -l nodejs_mise "󰎙 nodejs-mise"
    set -l nodejs18 "󰎙 nodejs v18"
    set -l bun_mise "🍞 bun mise"
    set -l bun_nix "🍞 bun nix"
    set -l rust "󱘗 rust"
    set -l scala " scala"
    set -l gleam "⭐ Gleam"
    set -l elixir " Elixir"

    set -l items $nodejs_nix $nodejs_mise $nodejs18 $bun_mise $bun_nix $rust $scala $gleam $elixir
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
    else if test "$config" = $bun_mise
        command nix flake init -t "github:seenark/nix-templates#bun-mise"
    else if test "$config" = $bun_nix
        command nix flake init -t "github:seenark/nix-templates#bun-nix"
    else if test "$config" = $elixir
        command nix flake init -t "github:seenark/nix-templates#elixir"
    else
        echo "there is no development template for $config yet"
    end

end
