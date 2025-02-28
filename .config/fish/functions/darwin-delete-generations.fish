function darwin-delete-generations
    command sudo nix-collect-garbage -d
    command darwin-rebuild --list-generations
end
