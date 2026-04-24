# Based on https://gist.github.com/bastibe/c0950e463ffdfdfada7adf149ae77c6f
# Changes:
# * Instead of overriding cd, we detect directory change. This allows the script to work
#   for other means of cd, such as z.
# * Update syntax to work with new versions of fish.
# * Handle virtualenvs that are not located in the root of a git directory.

function __auto_source_venv --on-variable PWD --description "Activate/Deactivate virtualenv on directory change"
  status --is-command-substitution; and return

  # Check if we are inside a git directory
  if git rev-parse --show-toplevel &>/dev/null
    set gitdir (realpath (git rev-parse --show-toplevel))
    set cwd (pwd -P)
    #echo "[venv] git root: $gitdir | cwd: $cwd"
    # While we are still inside the git directory, find the closest
    # virtualenv starting from the current directory.
    while string match "$gitdir*" "$cwd" &>/dev/null
      if test -e "$cwd/.venv/bin/activate.fish"
        echo "[venv] found .venv at $cwd — sourcing"
        source "$cwd/.venv/bin/activate.fish"
        if test -n "$VIRTUAL_ENV"
          #echo "[venv] activated: $VIRTUAL_ENV"
        else
          #echo "[venv] source ran but VIRTUAL_ENV still unset"
        end
        return
      else
        #echo "[venv] no .venv in $cwd — going up"
        set cwd (path dirname "$cwd")
      end
    end
    #echo "[venv] no .venv found in git tree"
  else
    #echo "[venv] not in git repo"
  end
  # If virtualenv activated but we are not in a git directory, deactivate.
  if test -n "$VIRTUAL_ENV"
    echo "[venv] outside git — deactivating $VIRTUAL_ENV"
    deactivate
  end
end
