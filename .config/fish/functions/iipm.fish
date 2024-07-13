
function iipm
    #!/usr/bin/env fish
    set -l server_ip "34.143.139.178"
    # set -l server_pass ""
    set -l private_key_path "$HOME/.ssh/iipm-deployer"
    set -l user deployer
    # set -l ssh_port ""

    # set -l cmd "ssh -o StrictHostKeyChecking=no -i $private_key_path $user@$server_ip"
    # echo $cmd

    command ssh -o StrictHostKeyChecking=no -i $private_key_path $user@$server_ip
end
