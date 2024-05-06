
set -g left_pane_id -1
set -g running_program ""

function wezterm-open-yazi-left
    set_left_pane_id

    if test $left_pane_id -ge 0
        # echo "Left pane exists"
        # echo left pane id gte 0: $left_pane_id
        get_program_name_from_pane_id
        activate_left_pane
        if test $running_program = yazi
        else
            echo yazi | wezterm cli send-text --pane-id $left_pane_id --no-paste
        end
    else
        # echo left pane id not exist: $left_pane_id
        split_left_pane
        # echo left pane id after split: $left_pane_id
        open_yazi_on_left_pane
    end
end

function open_yazi_on_left_pane
    sleep 0.3
    echo yazi | wezterm cli send-text --pane-id $left_pane_id --no-paste
end

function get_program_name_from_pane_id
    set -g running_program (wezterm cli list | awk -v pane_id="$left_pane_id" '$3==pane_id { print $6 }')
end

function set_left_pane_id
    set -g left_pane_id (wezterm cli get-pane-direction left)
    # echo pane id is after check $left_pane_id
    if test -n "$left_pane_id"
        # exist
        # echo left pane id exist: $left_pane_id
    else
        # not exist
        set -g left_pane_id -1
        # echo left pane id not exist: $left_pane_id
    end
    # echo pane id is $left_pane_id
    # echo left pane exist after set $left_pane_exist
end

function split_left_pane
    set -g left_pane_id (wezterm cli split-pane --left --percent 30)
    # echo $left_pane_id
end


function activate_left_pane
    command wezterm cli activate-pane-direction --pane-id $left_pane_id left
end

function get_current_wezterm_pane_id
    echo $WEZTERM_PANE
end
