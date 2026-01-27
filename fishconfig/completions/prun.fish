complete -c prun -f -a '(__fish_pnpm_scripts)'

function __fish_pnpm_scripts --description 'Get available pnpm scripts from package.json'
    if test -f package.json
        jq -r '.scripts | keys[]' package.json 2>/dev/null
    end
end