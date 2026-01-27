function clone --description 'Clone a spacemakerai repo to ~/adsk/<repo>'
    if test (count $argv) -eq 0
        echo "Usage: clone <repo>"
        echo "Clones spacemakerai/<repo> to ~/adsk/<repo>"
        return 1
    end

    gh repo clone spacemakerai/$argv[1] ~/adsk/$argv[1]
end
