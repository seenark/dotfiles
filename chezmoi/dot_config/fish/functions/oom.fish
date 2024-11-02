
function oom
    #!/usr/bin/env fish
    set -l server_ip "192.168.1.102"
    set -l user oom
    set -l pass hadesgod

    command sshpass -p $pass ssh -o StrictHostKeyChecking=no $server_ip -l $user
end
