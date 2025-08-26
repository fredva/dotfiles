function fcd --description "Fuzzy cd with fzf, excluding hidden and very deep directories"
    # Set maximum depth (adjust as needed)
    set -l max_depth 4

    # Find directories, excluding hidden ones and limiting depth
    set -l selected_dir (find . -maxdepth $max_depth -type d \
        -not -path '*/\.*' \
        -not -path './.*' \
        2>/dev/null | \
        sed 's|^\./||' | \
        sort | \
        fzf --height 40% --reverse --border \
            --prompt "cd> " \
            --preview 'ls -la {}' \
            --preview-window right:50%:wrap)

    # Change directory if selection was made
    if test -n "$selected_dir"
        cd "$selected_dir"
        and echo "Changed to: $PWD"
    end
end
