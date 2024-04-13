function hkh-pass
    # Prompt for server name
    echo "Enter server name (dev/uat/prod):"
    set -l items dev uat prod
    set server_name (printf "%s\n" $items | fzf --prompt="  Select Your Server = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$server_name"
        echo "Server name cannot be empty. Exiting."
        return 0
    end

    # Prompt for service name
    echo "Enter service name (api/web/db):"
    set -l items2 api web db
    set service_name (printf "%s\n" $items2 | fzf --prompt="  Select Your Server = " --height=~50% --layout=reverse --border --exit-0)
    if test -z "$service_name"
        echo "Service name cannot be empty. Exiting."
        return 0
    end

    switch $server_name
        case dev
            switch $service_name
                case api
                    echo YGnoZM8d7gfhOAiwcLaF
                case web
                    echo YGnoZM8d7gfhOAiwcLaF
                case db
                    echo YGnoZM8d7gfhOAiwcLaF
                case '*'
                    echo "Invalid service name. Exiting."
                    return 0
            end
        case uat
            switch $service_name
                case api
                    echo N73vvUT5kyE43mMXsprc
                case web
                    echo QJhCbx9dq6oO114OZ9Of
                case db
                    echo N73vvUT5kyE43mMXsprc
                case '*'
                    echo "Invalid service name. Exiting."
                    return 1
            end
        case prod
            switch $service_name
                case api
                    echo "dy]aNgascvr]bg8=yjo"
                case web
                    echo "dy]aNgasg;H[w:9N"
                case db
                    echo "dy]aNgasfu[u8]ylg9viN"
                case '*'
                    echo "Invalid service name. Exiting."
                    return 1
            end
        case '*'
            echo "Invalid server name. Exiting."
            return 1
    end
end
