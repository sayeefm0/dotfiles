<div align="center">

# bbflower dotfiles

<!-- ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/bbflower/dotfiles/Bootstrap%20Develop%20Environment?color=gray&logo=github&style=for-the-badge&labelColor=FA824C) -->

![os](https://img.shields.io/badge/os-gray?style=for-the-badge&labelColor=6D9DC5&logo=apple) 
![emacs](https://img.shields.io/badge/emacs-gray?style=for-the-badge&labelColor=646CFF&logo=gnuemacs&logoColor=white)
![shell](https://img.shields.io/badge/bash-gray?style=for-the-badge&logo=gnubash&labelColor=179287&logoColor=white)
![tmux](https://img.shields.io/badge/tmux-gray?style=for-the-badge&logo=tmux&labelColor=0AC18E&logoColor=white)
 
![last commit](https://img.shields.io/github/last-commit/bbflower/dotfiles?style=for-the-badge&logo=git&labelColor=357DED&logoColor=white&color=gray)
![build](https://img.shields.io/github/workflow/status/bbflower/dotfiles/Bootstrap%20Develop%20Environment?style=for-the-badge)

</div>

## Setup

> Notes:
> - Existing dotfiles (`.bash_profile`, `.tmux.conf`, `init.el`, `early-init.el`) are not symlinked
> - Run as `sudo` to change shell to `bash`
> - Sets `$EDITOR` to `emacsclient`. Run `emacs --daemon` to start the server prior to using `e` or `$EDITOR`

1. `git clone https://github.com/bbflower/dotfiles.git $SOME_DIR`
2. `bash $SOME_DIR/bash/bootstrap.sh`
