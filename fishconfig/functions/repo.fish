function repo
    # If an argument is provided, cd to it directly
    if test (count $argv) -gt 0
        cd ~/adsk/$argv[1]
        return
    end

    # Otherwise, use fzf to select
    set selected_dir (find ~/adsk -mindepth 1 -maxdepth 1 -type d | fzf \
                    --height=40% \
                    --border \
                    --reverse \
                    --prompt="Select repo: ")
    if test -n "$selected_dir"
        cd "$selected_dir"
    end
end
