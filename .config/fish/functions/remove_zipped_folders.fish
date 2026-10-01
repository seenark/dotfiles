function remove_zipped_folders
    for dir in */
        set name (string trim -r -c / "$dir")
        
        if test -f "$name.zip"
            echo "Removing: $dir"
            rm -rf -- "$dir"
        end
    end
end
