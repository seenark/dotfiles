function aqs-proxmox-tunnel --description "Generic SSH tunnel helper"
# Required
    set jump_host $argv[1]
    set jump_pass $argv[2]
    set vm_host $argv[3]
    set vm_pass $argv[4]
    # Optional: "local_port:remote_port" e.g. "5433:5432"
    set extra_forwards $argv[5..]

    echo "🔌 Opening SSH tunnel..."
    sshpass -p $jump_pass ssh -fN $jump_host

    echo "⏳ Waiting for tunnel..."
    for i in (seq 1 10)
        if nc -z 127.0.0.1 2222 2>/dev/null
            echo "✅ Tunnel ready"
            break
        end
        sleep 0.5
    end

    # Build extra port forward flags
    set forward_flags
    for pair in $extra_forwards
        set local_port (string split ":" $pair)[1]
        set remote_port (string split ":" $pair)[2]
        set -a forward_flags -L $local_port:127.0.0.1:$remote_port
    end

    echo "🚀 Connecting to VM..."
    if test (count $forward_flags) -gt 0
        echo "📡 Forwarding ports: $extra_forwards"
        sshpass -p $vm_pass ssh $forward_flags $vm_host
    else
        sshpass -p $vm_pass ssh $vm_host
    end

    echo "🔒 Closing tunnel..."
    pkill -f $jump_host
end
