function sshc

    set -l server_selected (select_server)

    switch $server_selected[2]
        case erc-dev-db
            handle_erc_dev_db
        case zero-carbon
            handle_zero_carbon
        case tgo
            handle_tgo
        case iipm
            handle_iipm
        case iipm-old-database
            handle_iipm_old_database
        case prompt-erc-dev-master
            handle_prompt-erc-dev-master
        case prompt-erc-dev-worker1
            handle_prompt-erc-dev-worker1
        case rtrda-dev
            handle_rtrda_dev
        case tgo-registry-master
            handle_tgo-registry-master
        case tgo-registry-gateway
            handle_tgo-registry-gateway
        case tgo-registry-prod-postgres
            handle_tgo-registry-prod-postgres
        case tgo-registry-prod-master
            handle_tgo-registry-prod-master
        case tgo-registry-prod-gateway
            handle_tgo-registry-prod-gateway
    end
end

function select_server
    set -l items erc-dev-db zero-carbon tgo iipm iipm-old-database prompt-erc-dev-master prompt-erc-dev-worker1 rtrda-dev tgo-registry-master tgo-registry-gateway tgo-registry-prod-postgres tgo-registry-prod-master tgo-registry-prod-gateway

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

function handle_prompt-erc-dev-master
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/erc/dev/master-erc-dev master@34.87.11.28
end

function handle_prompt-erc-dev-worker1
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/erc/dev/dev-worker1 worker1@35.240.140.243
end

function handle_rtrda_dev
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/rtrda deployer@34.124.166.82
end


function handle_tgo-registry-master
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/master master@34.124.161.63
end

function handle_tgo-registry-gateway
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/gateway gateway@34.124.249.225
end

function handle_tgo-registry-prod-postgres
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/prod/postgres postgres@34.143.139.57
end

function handle_tgo-registry-prod-master
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/prod/master master@34.143.194.102
end

function handle_tgo-registry-prod-gateway
    ssh -o StrictHostKeyChecking=no -i ~/.ssh/tgo-registry/prod/gateway gateway@34.142.219.28
end
