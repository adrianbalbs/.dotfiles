# .dotfiles

Migration of my old dotfiles to use a bare git repo instead og `stow`. The dotfiles
are tracked inside of the system's `$HOME` directory, rather than using symlinks

# How to install

Git clone this repository

```bash
git clone --bare git@github.com:adrianbalbs/.dotfiles.git
```

Then run
```bash
source ~/.zshrc

```

You can then sync this repository by using `dotfiles` instead of `git`. For example:
```bash
dotfiles add ~/.zshrc
dotfiles add ~/.config/nvim
dotfiles commit -m "<MESSAGE>"
dotfiles push

```

