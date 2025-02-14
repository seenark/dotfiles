function k8sconfig
    set -l server_selected (_select_k9s_server)

    switch $server_selected[2]
        case tgo-registry-prod-postgres
            _handle_k8s_config_tgo-registry-prod-postgres
        case tgo-registry-prod-master
            _handle_k8s_config_tgo-registry-prod-master
        case tgo-registry-dev-master
            _handle_k8s_config_tgo-registry-dev-master
        case erc-dev-master
            _handle_k8s_config_erc_dev_master
        case poolmanager-dev-master
            _handle_k8s_config_poolmanager_dev_master
    end

end

function _select_k9s_server
    set -l k9s_server tgo-registry-prod-postgres tgo-registry-prod-master tgo-registry-dev-master erc-dev-master poolmanager-dev-master

    echo "Enter server name (dev/uat/prod):"

    set server_name (printf "%s\n" $k9s_server | fzf --prompt="  Select Your Server 🖥️ = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$server_name"
        echo "Server name cannot be empty. Exiting."
        return 0
    end
    echo $server_name
end


function _handle_k8s_config_tgo-registry-prod-postgres
    # set -gx KUBECONFIG /Users/atiwatseenark/.dotfiles/kube-config/tgo-registry/prod/postgres
    set -gx KUBECONFIG $HOME/.private-key/kube-config/tgo-registry/prod/postgres
    echo $KUBECONFIG
end

function _handle_k8s_config_tgo-registry-prod-master
    set -gx KUBECONFIG $HOME/.dotfiles/kube-config/tgo-registry/prod/master
    # set -gx KUBECONFIG /Users/atiwatseenark/.dotfiles/kube-config/tgo-registry/prod/master
    echo $KUBECONFIG
end
function _handle_k8s_config_tgo-registry-dev-master
    set -gx KUBECONFIG $HOME/.dotfiles/kube-config/tgo-registry/dev/master
    echo $KUBECONFIG
end

function _handle_k8s_config_erc_dev_master
    set -gx KUBECONFIG $HOME/.dotfiles/kube-config/erc/dev/master
    echo $KUBECONFIG
end

function _handle_k8s_config_poolmanager_dev_master
    set -gx KUBECONFIG $HOME/.private-key/kube-config/pool-manager/dev/master
    echo $KUBECONFIG
end
