function gcom --description "Fuzzy git checkout from recent commits"
    # Get recent commits with branch info
    set -l selected_commit (git log --oneline --graph --color=always --max-count=50 --all | \
        fzf --ansi --height 60% --reverse --border \
            --prompt "checkout commit> " \
            --preview 'git show --color=always (echo {} | grep -o "[a-f0-9]\{7,\}" | head -1)' \
            --preview-window right:60%:wrap)
    
    if test -n "$selected_commit"
        # Extract commit hash
        set -l commit_hash (echo "$selected_commit" | grep -o "[a-f0-9]\{7,\}" | head -1)
        
        if test -n "$commit_hash"
            echo "Checking out commit: $commit_hash"
            git checkout "$commit_hash"
        end
    end
end
