function ollama
    # Check if the arguments are "start black"
    if test (count $argv) -eq 2
        if test "$argv[1]" = start -a "$argv[2]" = black
            echo "Starting Ollama with custom models directory for 'black'..."
            set -x OLLAMA_MODELS /Volumes/HadesGodBlack/Ollama
            command ollama start
            # Unset OLLAMA_MODELS after the command to avoid affecting subsequent ollama calls
            # unless explicitly intended to be persistent for the session.
            # If you want it to persist for the session, remove the 'set -e OLLAMA_MODELS' line.
            set -e OLLAMA_MODELS
            return 0
        end
    end

    # If not "start black", pass all arguments to the original ollama command
    echo "Running original ollama command: ollama $argv"
    command ollama $argv
end
