<div align="center">

 # minimalist mac user dotfiles

 ![os](https://img.shields.io/badge/mac-434C5E?style=for-the-badge&labelColor=2E3440&logo=apple)
 ![emacs](https://img.shields.io/badge/emacs-81A1C1?style=for-the-badge&labelColor=2E3440&logo=gnuemacs&logoColor=white)
 ![bash](https://img.shields.io/badge/bash-7ebebd?style=for-the-badge&labelColor=2E3440&logo=gnubash&logoColor=white)
 ![tmux](https://img.shields.io/badge/tmux-A3BE8C?style=for-the-badge&labelColor=2E3440&logo=tmux&logoColor=white)
 
 [getting started](#getting-started)
 
 ---

</div>

## about

This repo contains my up-to-date dotfiles and a bootstrap script that does what you might expect. The script is tested daily and on push as part of a
[gh actions workflow](https://github.com/sayeefm0/dotfiles/actions). 

I keep my dotfiles minimal and discoverable (as in, able to be remembered upon re-exploration) to avoid bankruptcies. I find that
I typically update my config in short bursts, with varying lengths of time between, and the more magical and specific it becomes the more
inclined I am to throw it away and start over. With that said, I have gone through *many* iterations of dotfiles, but I'm hopeful that 
this time will be different.

If I explained the project structure normally, I think it would be a bit patronizing, so instead:
```bash
for d in dotfiles/*/; do
  echo "Configuration for: $d"
done
```

Jokes aside, I hope to maintain the cleanliness and brevity of this repo so that you (and future I) can make sense of it.

## getting started

### full environment setup

To setup from scratch, use the `bootstrap` script. I could tell you what it does, but you should really just read it.
It's not long.

1. `git clone https://github.com/sayeefm0/dotfiles.git`
2. `/bin/bash dotfiles/bash/bootstrap.sh`

### cherrypicking config

If you just want to try, say, the emacs config, but don't care about tmux because you use screen anyway, symlink the files into the correct
places. If you're trying to do that, you probably know exactly what to do, but just in case:

**bash**
- `ln -s dotfiles/bash/bash_profile $HOME/.bash_profile`

**tmux**
- `ln -s dotfiles/tmux/tmux.conf $HOME/.tmux.conf`

**emacs**
- `ln -s dotfiles/emacs/early-init.el $HOME/.emacs.d/early-init.el`
- `ln -s dotfiles/emacs/init.el $HOME/.emacs.d/init.el`
- `ln -s dotfiles/emacs/lisp $HOME/.emacs.d/lisp`

## emacs

Emacs users are known to spend excessive amounts of time configuring their favorite piece of software, and I am not an exception
to the rule. Here are some things that you should know about how I use emacs before you try out my setup:

- I prefer absolutely minimal UI, with only that which is required *right now*.
  - For example, I don't use any filetree explorer, tab bar, or even the builtin modeline.
- I use `emacs -nw`, and have never tried this configuration with GUI emacs.
- Given that I use terminal emacs, I don't use any terminal emulation *within* emacs. However, I do have bindings to send commands *to tmux, from within emacs*.
- I build [`gccemacs aka --with-native-comp`](https://www.emacswiki.org/emacs/GccEmacs) - the first time you open emacs you may notice lag for a few minutes while emacs compiles all of the additional packages specified in my `init.el`.
- I use `straight.el` in place of `package.el`. If you're a `doom` user, this will be familiar. 

This is not a configuration framework, but it could be a good starting point for your own `init.el`, or as a reference for 
configuring [`lsp-mode`](https://github.com/emacs-lsp/lsp-mode) and [`dap-mode`](https://github.com/emacs-lsp/dap-mode), 
which seem to cause a lot of custom config rollers problems.

## tmux

Prefix key set to `C-t`. Tmux follows emacs keybinds. For example, here's how I manage tmux panes:

- `C-t 1`: toggle zoom pane
- `C-t 0`: kill pane (I know that `C-x 0` deletes, not kills, a window, not buffer)
- `C-t 2`: split window vertically
- `C-t 3`: split window horizontally
