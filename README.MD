<div align="center">

 # minimalist mac user dotfiles

 ![os](https://img.shields.io/badge/mac-434C5E?style=for-the-badge&labelColor=2E3440&logo=apple)
 ![emacs](https://img.shields.io/badge/emacs-81A1C1?style=for-the-badge&labelColor=2E3440&logo=gnuemacs&logoColor=white)
 ![bash](https://img.shields.io/badge/bash-7ebebd?style=for-the-badge&labelColor=2E3440&logo=gnubash&logoColor=white)
 ![tmux](https://img.shields.io/badge/tmux-A3BE8C?style=for-the-badge&labelColor=2E3440&logo=tmux&logoColor=white)
 
 ![ci](https://img.shields.io/github/workflow/status/sayeefm0/dotfiles/bootstrap?label=CI&logo=github&style=for-the-badge)
 
 [getting started](#getting-started) | [emacs](#emacs) | [tmux](#tmux)
 
</div>

## about

These are my dotfiles and a `bootstrap.sh` script to set it up from scratch. The script is [tested daily and on `git push`](https://github.com/sayeefm0/dotfiles/actions). 

## getting started

### install everything

The `bootstrap.sh` script will install missing packages, setup environments
for various programming languages, and link dotfiles into the right places.

> **Note**: This will overwrite existing dotfiles

1. `git clone https://github.com/sayeefm0/dotfiles.git`
2. `/bin/bash dotfiles/bash/bootstrap.sh`

### cherrypicking config

**bash**
- `ln -s dotfiles/bash/bash_profile $HOME/.bash_profile`

**tmux**
- `ln -s dotfiles/tmux/tmux.conf $HOME/.tmux.conf`

**emacs**
- `ln -s dotfiles/emacs/early-init.el $HOME/.emacs.d/early-init.el`
- `ln -s dotfiles/emacs/init.el $HOME/.emacs.d/init.el`
- `ln -s dotfiles/emacs/lisp $HOME/.emacs.d/lisp`

## emacs

```
dotfiles/emacs/
  init.el                   <-- Each line in init is effectively a toggle for a feature
  early-init.el
  lisp/
    builtin.el              <-- Configuration of builtin modes/vars
    keymaps.el              <-- Personal keymaps used throughout the config
    package-mgmt.el         <-- Sets up straight.el and use-package
    <package-name>.el       <-- Each external package has its own file. Many of these are < 10 lines
    langs/
      <lang-name>.el        <-- Each language has its own file
```

> **Startup**: 540ms - 680ms

- Minimal UI (and config)
  - ~~lsp ui~~, ~~centaur tabs~~, ~~modeline~~, ~~treemacs~~
- I use `emacs -nw` and have not tested on GUI
- I do not use terminal emulation in emacs
- I use the [`gccemacs` build](https://www.emacswiki.org/emacs/GccEmacs). When opening emacs for the first time, you may experience latency while packages are being compiled. 
- `straight.el` instead of `package.el`.
- Startup time can be found in `*Messages*`.

## tmux

Prefix key: `C-t`. Tmux follows emacs keybinds. For example:

- `C-t 1`: toggle zoom pane
- `C-t 0`: kill pane
- `C-t 2`: split window vertically
- `C-t 3`: split window horizontally
