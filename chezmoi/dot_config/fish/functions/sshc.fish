function sshc

    set -l server_selected (select_server)

    switch $server_selected[2]
        case erc-dev-db
            handle_erc_dev_db
        case zero-carbon
            _handle_zero_carbon
        case tgo
            _handle_tgo
        case iipm
            _handle_iipm
        case iipm-old-database
            _handle_iipm_old_database
        case prompt-erc-dev-master
            _handle_prompt-erc-dev-master
        case prompt-erc-dev-worker1
            _handle_prompt-erc-dev-worker1
        case rtrda-dev
            _handle_rtrda_dev
        case tgo-registry-master
            _handle_tgo-registry-master
        case tgo-registry-gateway
            _handle_tgo-registry-gateway
        case tgo-registry-prod-postgres
            _handle_tgo-registry-prod-postgres
        case tgo-registry-prod-master
            _handle_tgo-registry-prod-master
        case tgo-registry-prod-gateway
            _handle_tgo-registry-prod-gateway
        case aquila-kms
            _handle_aquila_kms
    end
end

function ssh_with_key
    argparse 'k/key=' 'h/host=' 'u/user=' -- $argv
    or begin
        echo "Usage: ssh_with_key -k|--key KEY_PATH -h|--host HOST -u|--user USERNAME"
        return 1
    end

    # Check if required parameters are provided
    if not set -q _flag_key; or not set -q _flag_host; or not set -q _flag_user
        echo "Error: Missing required parameters"
        echo "Usage: ssh_with_key -k|--key KEY_PATH -h|--host HOST -u|--user USERNAME"
        return 1
    end

    set -l private_key_source $_flag_key
    set -l temp_key_path "$HOME/.ssh/temp_key_(random)"
    set -l remote_host $_flag_host
    set -l remote_user $_flag_user

    # Check if source private key exists
    if not test -f $private_key_source
        echo "Error: Private key file '$private_key_source' not found"
        return 1
    end

    # Copy private key to temporary location with unique name
    cp $private_key_source $temp_key_path
    or begin
        echo "Error: Failed to copy private key"
        return 1
    end

    # Set proper permissions
    chmod 600 $temp_key_path
    or begin
        echo "Error: Failed to set permissions on temporary key"
        rm -f $temp_key_path
        return 1
    end

    # Attempt SSH connection
    echo "Connecting to $remote_user@$remote_host..."
    ssh -o StrictHostKeyChecking=no -i $temp_key_path "$remote_user@$remote_host"
    set -l ssh_status $status

    # Clean up temporary key file
    rm -f $temp_key_path

    return $ssh_status
end


function select_server
    set -l items erc-dev-db zero-carbon tgo iipm iipm-old-database prompt-erc-dev-master prompt-erc-dev-worker1 rtrda-dev tgo-registry-master tgo-registry-gateway tgo-registry-prod-postgres tgo-registry-prod-master tgo-registry-prod-gateway aquila-kms

    echo "Enter server name (dev/uat/prod):"

    set server_name (printf "%s\n" $items | fzf --prompt="  Select Your Server = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$server_name"
        echo "Server name cannot be empty. Exiting."
        return 0
    end
    echo $server_name
end

function command_ssh --description 'SSH into a specified host' -a key_path -a host
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/$key_path deployer@$host
end

function _handle_erc_dev_db
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/erc-dev-db \
        --host 35.197.139.210 \
        --user deployer
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/erc-dev-db deployer@35.197.139.210
end

function _handle_zero_carbon
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/zerocarbon \
        --host 35.198.232.128 \
        --user deployer
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/zerocarbon deployer@35.198.232.128
end

function _handle_tgo
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/tgo \
        --host 35.198.212.178 \
        --user deployer
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo deployer@35.198.212.178
end


function _handle_iipm
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/iipm/iipm-deployer \
        --host 34.143.139.178 \
        --user deployer
    # command ssh -o StrictHostKeyChecking=no -i ~/.ssh/iipm-deployer deployer@34.143.139.178
end

function _handle_iipm_old_database
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/iipm/iipm-old-database \
        --host 35.247.102.74 \
        --user deploye
end

function _handle_prompt-erc-dev-master
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/erc/dev/master-erc-dev \
        --host 34.87.11.28 \
        --user master
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/erc/dev/master-erc-dev master@34.87.11.28
end

function _handle_prompt-erc-dev-worker1
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/erc/dev/dev-worker1 \
        --host 35.240.140.243 \
        --user worker1
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/erc/dev/dev-worker1 worker1@35.240.140.243
end

function _handle_rtrda_dev
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/rtrda \
        --host 34.124.166.82 \
        --user deployer
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/rtrda deployer@34.124.166.82
end


function _handle_tgo-registry-master
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/tgo-registry/master \
        --host 34.124.161.63 \
        --user deployer
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/master master@34.124.161.63
end

function _handle_tgo-registry-gateway
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/tgo-registry/gateway \
        --host 34.124.249.225 \
        --user gateway
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/gateway gateway@34.124.249.225
end

function _handle_tgo-registry-prod-postgres
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/tgo-registry/prod/postgres \
        --host 34.143.139.57 \
        --user postgres
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/prod/postgres postgres@34.143.139.57
end

function _handle_tgo-registry-prod-master
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/tgo-registry/prod/master \
        --host 34.143.194.102 \
        --user master
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/prod/master master@34.143.194.102
end

function _handle_tgo-registry-prod-gateway
    ssh_with_key \
        --key ~/.dotfiles/private-key/works/tgo-registry/prod/master \
        --host 34.142.219.28 \
        --user gateway
    # ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/prod/gateway gateway@34.142.219.28
end

function _handle_aquila_kms
    ssh_with_key \
        --key ~/.dotfiles/private-key/aqs-kms/aqs-kms \
        --host 34.124.227.237 \
        --user master
end
