function ssh-permissions
    echo "Setting SSH directory permissions..."
    chmod 700 ~/.ssh

    echo "Setting key permissions..."
    for file in ~/.ssh/*
        # Skip if it's a directory
        if test -d $file
            continue
        end

        # Skip if it's a public key (.pub)
        if string match -q "*.pub" $file
            chmod 644 $file
            echo "Public key: Setting 644 for $file"
            continue
        end

        # Skip common non-key files
        if test (basename $file) = config
            chmod 600 $file
            echo "Config: Setting 600 for $file"
            continue
        end

        if test (basename $file) = authorized_keys
            chmod 644 $file
            echo "Authorized keys: Setting 644 for $file"
            continue
        end

        if test (basename $file) = known_hosts
            chmod 644 $file
            echo "Known hosts: Setting 644 for $file"
            continue
        end

        # Assume all other files are private keys
        chmod 600 $file
        echo "Private key: Setting 600 for $file"
    end

    echo "SSH permissions fixed!"
end
