function sshx

    set -l items poolmanager-dev aqs-kms hkhpdf-dev tgo-registry-prod-gateway tgo-registry-prod-master tgo-registry-prod-postgres tgo-registry-dev-master tgo-registry-dev-gateway tgo-zerocarbon rtrda-dev erc-dev-worker1 erc-dev-master iipm-old-database iipm-dev dmf-nuxt-frontend

    echo "Enter server name:"

    set server_name (printf "%s\n" $items | fzf --prompt="  Select Your Server = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$server_name"
        echo "Server name cannot be empty. Exiting."
        return 0
    end
    command ssh $server_name

end
