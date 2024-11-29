function privatekey-chmod-600
    find ~/.dotfiles/private-key/ -type f ! -name "*.*" -exec chmod 600 {} \;
    echo "Set permissions 600 on private key files"
end
