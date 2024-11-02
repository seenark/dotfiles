function asking_url
    read -P "Enter the url of m3u8: " url
    read -P "Filename to be saved on desktop: " filename

    if test -z "$url" -o -z "$filename"
        echo "URL and filename cannot be empty. Exiting."
        return 1
    end

    echo "$url"
    echo "$filename"
end

function ffmpeg-m3u8
    set -l answer (asking_url)

    if test (count $answer) -ne 2
        return 1
    end

    set -l url $answer[1]
    set -l filename $answer[2]

    echo "URL: '$url' and Filename: '$filename'"

    set -l filepath (echo ~/Desktop/$filename.mp4)
    echo "File will be saved to: $filepath"

    # Uncomment the following line to run the actual ffmpeg command
    ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -i "$url" -c copy "$filepath"
end
