# .dotfiles

Migration of my old dotfiles to use a bare git repo instead og `stow`. The dotfiles
are tracked inside of the system's `$HOME` directory, rather than using symlinks

# How to install

Git clone this repository

```bash
git clone --bare git@github.com:adrianbalbs/.dotfiles.git $HOME/.dotfiles
```

Then run
```bash

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
source ~/.zshrc

```

You can then sync this repository by using `dotfiles` instead of `git`. For example:
```bash
dotfiles add -f ~/.zshrc
dotfiles add -f ~/.config/nvim
dotfiles commit -m "<MESSAGE>"
dotfiles push

```

