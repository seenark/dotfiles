function zipfolders_parallel
    set workers 4
    
    printf '%s\0' */ | xargs -0 -n1 -P$workers sh -c '
        dir="$1"
        name="${dir%/}"

        if test -f "$name.zip"; then
            echo "Skip: $name.zip"
            exit 0
        fi

        echo "Zipping: $dir"
        zip -rq "$name.zip" "$dir" -x "*.DS_Store" "__MACOSX/*"
    ' _
end
