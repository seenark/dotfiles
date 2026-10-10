function nvimtemp
    nvim +'enew | file [Scratch] | setlocal buftype=nofile bufhidden=wipe noswapfile'
end
