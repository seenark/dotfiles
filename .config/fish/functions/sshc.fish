function sshc

    set -l server_selected (select_server)

    switch $server_selected[2]
        case erc-dev-db
            handle_erc_dev_db
        case erc-master
            handle_erc_master
        case erc-mk8s-master
            handle_erc_mk8s_master
        case zero-carbon
            handle_zero_carbon
        case tgo
            handle_tgo
        case iipm
            handle_iipm
        case iipm-old-database
            handle_iipm_old_database
    end
end

function select_server
    set -l items erc-mk8s-master erc-dev-db erc-master zero-carbon tgo iipm iipm-old-database

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

function handle_erc_dev_db
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/erc-dev-db deployer@35.197.139.210
end


function handle_erc_master
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/erc-master master@35.247.142.197
end

function handle_erc_mk8s_master
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/erc-mk8s deployer@35.240.249.243
end

function handle_zero_carbon
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/zerocarbon deployer@35.198.232.128
end

function handle_tgo
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo deployer@35.198.212.178
end


function handle_iipm
    command ssh -o StrictHostKeyChecking=no -i ~/.ssh/iipm-deployer deployer@34.143.139.178
end

function handle_iipm_old_database
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/iipm-old-database deploye@35.247.102.74
end
