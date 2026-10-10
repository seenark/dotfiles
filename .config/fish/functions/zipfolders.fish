function zipfolders
    for dir in */
        set name (string trim -r -c / "$dir")
        set output "$name.zip"
        
        if test -e "$output"
            echo "Skip: $output already exists"
            continue
        end
        
        echo "Zipping: $dir -> $output"
        zip -r "$output" "$dir" -x "*.DS_Store" "__MACOSX/*"
    end
end
