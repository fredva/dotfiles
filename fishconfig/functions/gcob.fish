function gcob --description "Git checkout with branch selection and creation"
    # Get all branches (local and remote) and clean them up
    set -l branches (git for-each-ref --format='%(refname:short)' refs/heads/ refs/remotes/ | \
        sed 's|^origin/||' | \
        sort -u | \
        grep -v '^HEAD$')

    # Create options list with new branch option at top
    set -l options "🆕 Create new branch"
    for branch in $branches
        set options $options $branch
    end

    # Use fzf to select
    set -l preview_cmd 'fish -c "
        if test \"{}\" = \"🆕 Create new branch\"
            echo \"Create a new branch from current HEAD\"
            echo \"\"
            git log --oneline -5 HEAD
        else
            echo \"Branch: {}\"
            echo \"\"
            if git show-ref --verify --quiet refs/heads/{}
                git log --oneline --graph -10 {}
            else
                git log --oneline --graph -10 origin/{} 2>/dev/null; or echo \"No commits found\"
            end
        end
    "'

    set -l choice (printf '%s\n' $options | \
        fzf --height=50% \
            --reverse \
            --border \
            --prompt="Git checkout > " \
            --preview-window=right:60% \
            --preview=$preview_cmd)

    # Handle the selection
    if test -n "$choice"
        if test "$choice" = "🆕 Create new branch"
            read -P "Branch name: " new_branch
            if test -n "$new_branch"
                git checkout -b "$new_branch"
            end
        else
            git checkout "$choice"
        end
    end
end
