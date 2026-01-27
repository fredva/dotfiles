function prun --description 'Run pnpm scripts with tab completion'
    if test (count $argv) -eq 0
        echo "Usage: prun <script>"
        echo "Available scripts:"
        if test -f package.json
            jq -r '.scripts | keys[]' package.json 2>/dev/null | sed 's/^/  /'
        end
        return 1
    end
    
    pnpm run $argv
end