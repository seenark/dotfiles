function k9sc

    set -l server_selected (_select_k9s_server)

    switch $server_selected[2]
        case tgo-registry-prod-postgres
            _handle_k9s_tgo-registry-prod-postgres
        case tgo-registry-prod-master
            _handle_k9s_tgo-registry-prod-master
        case tgo-registry-dev-master
            _handle_k9s_tgo-registry-dev-master
    end
end

function _select_k9s_server
    set -l k9s_server tgo-registry-prod-postgres tgo-registry-prod-master tgo-registry-dev-master

    echo "Enter server name (dev/uat/prod):"

    set server_name (printf "%s\n" $k9s_server | fzf --prompt="  Select Your Server 🖥️ = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$server_name"
        echo "Server name cannot be empty. Exiting."
        return 0
    end
    echo $server_name
end

function _handle_k9s_tgo-registry-prod-postgres
    set -x KUBECONFIG /Users/atiwatseenark/.dotfiles/kube-config/tgo-registry/prod/postgres
    command k9s
end

function _handle_k9s_tgo-registry-prod-master
    set -x KUBECONFIG /Users/atiwatseenark/.dotfiles/kube-config/tgo-registry/prod/master
    command k9s
end

function _handle_k9s_tgo-registry-dev-master
    set -x KUBECONFIG /Users/atiwatseenark/.dotfiles/kube-config/tgo-registry/dev/master
    command k9s
end
