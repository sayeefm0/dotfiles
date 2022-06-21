<div align="center">

 # bbflower dotfiles

 ![os](https://img.shields.io/badge/mac-7ebebd?style=for-the-badge&labelColor=282b33&logo=apple)
 ![emacs](https://img.shields.io/badge/emacs-7ebebd?style=for-the-badge&labelColor=282b33&logo=gnuemacs&logoColor=white)
 ![bash](https://img.shields.io/badge/bash-7ebebd?style=for-the-badge&labelColor=282b33&logo=gnubash&logoColor=white)
 ![tmux](https://img.shields.io/badge/tmux-7ebebd?style=for-the-badge&labelColor=282b33&logo=tmux&logoColor=white)
 
 **Uniform, lean dotfiles**
 
 ---
 
 ![showcase](img/dotfiles-multi-split.png)
 
</div>

## Core Principles

- Attention sparing
    - ~modeline~, ~tmux statusline~, ~line numbers~, ~git-diff~
- Use defaults whenever reasonable
- Consistent, predictable keybinds across layers
    - e.g. `C-x 1`, `C-d 1`, `C-t 1` will isolate the emacs window, isolate the emacs buffer, and isolate the tmux pane, respectively.
- Configuration code **_must_** be simple, and its behavior obvious

## Install

> Notes:
> - Existing dotfiles (`.bash_profile`, `.tmux.conf`, `init.el`, `early-init.el`) are not symlinked
> - Run as `sudo` to change shell to `bash`
> - Sets `$EDITOR` to `emacsclient` - run `emacs --daemon` or `er (aliased in bash_profile)` prior to use. 

1. `git clone https://github.com/bbflower/dotfiles.git`
2. `bash dotfiles/bash/bootstrap.sh`

## Misc

- Font: [JetBrains Mono](https://www.jetbrains.com/lp/mono/) `14pt`
- iTerm line spacing: `105`

## Screenshots

<div align="center"> 

 tuned distraction free editing, including peripheral text dimming a la focus-mode
 
 ![focus](img/dotfiles-focus.png)
 
 lsp integration and autocompletion
 
 ![lsp](img/dotfiles-lsp.png)
 
 embedded git porcelain via magit

 ![magit](img/dotfiles-magit.png)
 
</div>
