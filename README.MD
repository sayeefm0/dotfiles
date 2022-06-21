<div align="center">

# bbflower dotfiles

![os](https://img.shields.io/badge/os-gray?style=for-the-badge&labelColor=6D9DC5&logo=apple) 
![emacs](https://img.shields.io/badge/emacs-gray?style=for-the-badge&labelColor=646CFF&logo=gnuemacs&logoColor=white)
![shell](https://img.shields.io/badge/bash-gray?style=for-the-badge&logo=gnubash&labelColor=179287&logoColor=white)
![tmux](https://img.shields.io/badge/tmux-gray?style=for-the-badge&logo=tmux&labelColor=0AC18E&logoColor=white)
 
![last commit](https://img.shields.io/github/last-commit/bbflower/dotfiles?style=for-the-badge&logo=git&labelColor=357DED&logoColor=white&color=gray)
![build](https://img.shields.io/github/workflow/status/bbflower/dotfiles/Bootstrap%20Develop%20Environment?style=for-the-badge)

</div>

## Core Principles

- More minimal than other "minimal" setups - remove **all** noise; only see what's required *right now*
- Consistent keybinds for emacs and tmux
- No magic

## Install

> Notes:
> - Existing dotfiles (`.bash_profile`, `.tmux.conf`, `init.el`, `early-init.el`) are not symlinked
> - Run as `sudo` to change shell to `bash`
> - Sets `$EDITOR` to `emacsclient` - run `emacs --daemon` or `er (aliased in bash_profile)` prior to use. 

1. `git clone https://github.com/bbflower/dotfiles.git`
2. `bash dotfiles/bash/bootstrap.sh`
