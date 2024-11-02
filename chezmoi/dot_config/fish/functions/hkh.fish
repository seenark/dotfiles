
function hkh
    #!/usr/bin/env fish
    set -l server_ip ""
    set -l server_pass ""
    set -l user ""
    set -l ssh_port ""
    set -l cmd ""

    function forward_port
        # set -l forwarded_port ""
        # set -l db_port ""
        # Function to handle port forwarding logic
        echo "Enter the port to forward for the 'db' service:"
        read -P "to Host Port (default is 3306):" forwarded_port
        echo "Enter the Server DB Port (default is 3306):"
        read -P "Server DB Port (default is 3306):" db_port

        if test -z "$forwarded_port" -a -z "$db_port"
            echo "Host's Port and Server's DB Port cannot be empty. Exiting."
            return 1
        end

        echo "Forwarding DB Port $db_port to Host $forwarded_port"
        echo $forwarded_port
        echo $db_port

    end

    # Prompt for server name
    function select_server
        set -l items dev uat prod cd

        echo "Enter server name (dev/uat/prod):"

        set server_name (printf "%s\n" $items | fzf --prompt="  Select Your Server = " --height=~50% --layout=reverse --border --exit-0)
        if test -z "$server_name"
            echo "Server name cannot be empty. Exiting."
            return 0
        end
        echo $server_name
    end

    function select_service
        set -l items api web db

        echo "Enter service name (api/web/db):"

        set service_name (printf "%s\n" $items | fzf --prompt="  Select Your Service = " --height=~50% --layout=reverse --border --exit-0)
        if test -z "$service_name"
            echo "Service name cannot be empty. Exiting."
            return 0
        end
        echo $service_name
    end

    function select_folder
        set -l items frontend backend

        echo "Enter service name (api/web/db):"

        set folder (printf "%s\n" $items | fzf --prompt="  Select Your folder = " --height=~50% --layout=reverse --border --exit-0)
        if test -z "$folder"
            echo "Service name cannot be empty. Exiting."
            return 0
        end
        echo $folder

    end

    set -l server_selected (select_server)
    set -l server_name $server_selected[2]
    echo "The server you was select: $server_name"

    # if test $status -eq 0
    #     echo "Exited without selecting a server."
    #     kill -INT $fish_pid
    #     exit 0
    # end


    if test $server_name = cd
        set -l folder (select_folder)
        switch $folder[2]
            case backend
                cd /Volumes/HadesGodBlue/Jobs/HKH/HKH-backend-WebApplication
                return 1
            case frontend
                cd /Volumes/HadesGodBlue/Jobs/HKH/HKH-WebApplication
                return 1
        end
    end

    set -l service_selected (select_service)
    set -l service_name $service_selected[2]
    echo "The service you was select: $service_name"


    switch $server_name
        case dev
            switch $service_name
                case api
                    set server_ip "35.240.185.1"
                    set server_pass YGnoZM8d7gfhOAiwcLaF
                    set user api-backend
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no $server_ip -l $user
                case web
                    # Add logic for 'dev' and 'web'
                    set server_ip dev-web-ip
                    set server_pass dev-web-pass
                    set user dev-web-user
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no $server_ip -l $user
                case db
                    set server_ip "35.240.185.1"
                    set server_pass YGnoZM8d7gfhOAiwcLaF
                    set user api-backend
                    set -l result (forward_port)
                    set -l forwarded_port $result[4]
                    set -l db_port $result[5]
                    echo "Forwarding DB Port $db_port to Host $forwarded_port"
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no -L $forwarded_port:127.0.0.1:$db_port $server_ip -l $user
                case '*'
                    echo "Invalid service name. Exiting."
                    return 1
            end
        case uat
            switch $service_name
                case api
                    set server_ip "34.126.99.181"
                    set server_pass N73vvUT5kyE43mMXsprc
                    set user uat-apiservice
                    echo "Path: cd /home/uat-apiservice/htdocs/api.prehkh.net"
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no $server_ip -l $user
                case web
                    set server_ip "34.126.99.181"
                    set server_pass QJhCbx9dq6oO114OZ9Of
                    set user uat-frontend
                    echo "Path: cd /home/uat-frontend/htdocs/prehkh.net"
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no $server_ip -l $user
                case db
                    set server_ip "34.126.99.181"
                    set server_pass N73vvUT5kyE43mMXsprc
                    set user uat-apiservice
                    set -l result (forward_port)
                    set -l forwarded_port $result[4]
                    set -l db_port $result[5]
                    echo "Forwarding DB Port $db_port to Host $forwarded_port"
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no -L $forwarded_port:127.0.0.1:$db_port $server_ip -l $user
                case '*'
                    echo "Invalid service name. Exiting."
                    return 1
            end
        case prod
            switch $service_name
                case api
                    set server_ip "10.101.2.36"
                    set server_pass dy]aNgascvr]bg8=yjo
                    set user gasapp
                    set ssh_port -p 34522
                    echo "Path: cd /var/app/HKH-backend-WebApplication"
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no $server_ip $ssh_port -l $user
                case web
                    set server_ip "10.101.2.35"
                    set server_pass "dy]aNgasg;H[w:9N"
                    set user gasweb
                    set ssh_port -p 34522
                    echo "Path: cd /var/www/html/HKH-WebApplication"
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no $server_ip $ssh_port -l $user
                case db
                    set server_ip "10.101.2.37"
                    set server_pass "dy]aNgasfu[u8]ylg9viN"
                    set user gasdbproxy
                    set ssh_port -p 34522
                    set -l result (forward_port)
                    set -l forwarded_port $result[4]
                    set -l db_port $result[5]
                    echo "Forwarding DB Port $db_port to Host $forwarded_port"
                    set cmd sshpass -p $server_pass ssh -o StrictHostKeyChecking=no -L $forwarded_port:127.0.0.1:$db_port $server_ip $ssh_port -l $user
                case '*'
                    echo "Invalid service name. Exiting."
                    return 1
            end
        case '*'
            echo "Invalid server name. Exiting."
            return 1
    end

    # read -P "are you want to forward port (y/n): " want_forward_port
    # if test -z "$want_forward_port"
    #     echo "ok you want to $want_forward_port"
    #     set -l want_forward_port false
    # else
    #     set -l want_forward_port true
    # end

    # Your logic using the provided server and service names
    echo "Selected server: $server_name"
    echo "Selected service: $service_name"
    echo "Selected server ip: $server_ip"
    echo "user: $user"
    # echo "Password: $server_pass"
    # echo "Command: $cmd"

    command $cmd
end
