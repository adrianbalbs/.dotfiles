function ls
    if command -q eza
        eza --git $argv
    else
        command ls $argv
    end
end
