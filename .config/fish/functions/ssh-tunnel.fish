function ssh-tunnel -d "Create SSH tunnel from remote to local port"
    # Arguments:
    # $argv[1] - remote host (user@hostname or hostname)
    # $argv[2] - remote port
    # $argv[3] - local port (optional, defaults to same as remote port)

    # -N flag explanation:
    # -N tells SSH to not execute a remote command
    # This is useful for port forwarding as we only want to create the tunnel
    # without opening a shell session

    if test (count $argv) -lt 2
        echo "Usage: tunnel user@hostname remote_port [local_port]"
        echo "Example: tunnel user@example.com 8080 3000"
        return 1
    end

    # Get the remote host and port
    set remote_host $argv[1]
    set remote_port $argv[2]

    # If local port is not specified, use the same as remote port
    if test (count $argv) -ge 3
        set local_port $argv[3]
    else
        set local_port $remote_port
    end

    # Preview the command
    set cmd "ssh -N -L $local_port:localhost:$remote_port $remote_host"
    echo "Command to execute:"
    echo $cmd

    # Ask for confirmation
    read -l -P "Continue? [y/N] " confirm
    if test "$confirm" != y -a "$confirm" != Y
        echo Cancelled
        return 1
    end

    # Create the SSH tunnel
    echo "Creating tunnel from $remote_host:$remote_port to localhost:$local_port"
    eval $cmd
end
