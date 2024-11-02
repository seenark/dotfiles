

function yazi-wezterm-open-file
    set -l file_path $argv[1]
    # echo file_path: $file_path

    set -l right_pane_id $(wezterm cli get-pane-direction right)

    if test -z $right_pane_id
        set -f right_pane_id $(wezterm cli split-pane --right --percent 70)
    end

    # echo right_pane_id: $right_pane_id


    set -l program $(wezterm cli list | awk -v pane_id="$right_pane_id" '$3==pane_id { print $6 }')
    # echo program: $program

    if test $program = hx
        sleep 0.3
        # echo file_path: $file_path
        command wezterm cli send-text --pane-id $right_pane_id --no-paste -- ":open $file_path"
        # echo ":open $file_path" | wezterm cli send-text --pane-id $right_pane_id --no-paste
        echo \r | wezterm cli send-text --pane-id $right_pane_id --no-paste
    else
        sleep 0.3
        echo "hx $file_path" | wezterm cli send-text --pane-id $right_pane_id --no-paste
    end

    # sleep 0.3
    command wezterm cli activate-pane-direction --pane-id $right_pane_id right
end
