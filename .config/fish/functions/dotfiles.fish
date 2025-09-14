function dotfiles --description 'Manage dotfiles with a bare git repo'
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME $argv
end
