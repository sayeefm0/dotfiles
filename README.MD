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

This repo contains my up-to-date dotfiles and a bootstrap script that does what you might expect. The script is tested daily and on push as part of a
[gh actions workflow](https://github.com/sayeefm0/dotfiles/actions). 

I keep my dotfiles minimal and discoverable (as in, able to be remembered upon re-exploration) to avoid bankruptcies. I find that
I typically update my config in short bursts, with varying lengths of time between, and the more magical and specific it becomes the more
inclined I am to throw it away and start over. With that said, I have gone through *many* iterations of dotfiles, but I'm hopeful that 
this time will be different.

If I explained the project structure normally, it would be a bit repetitive:
```bash
for d in dotfiles/*/; do
  echo "Configuration for: $d"
done
```

I hope to maintain the cleanliness and brevity of this repo so that you (and future I) can make sense of it.

## getting started

### full environment setup

To setup from scratch, use the `bootstrap` script. I suggest reading it, it's not long.

1. `git clone https://github.com/sayeefm0/dotfiles.git`
2. `/bin/bash dotfiles/bash/bootstrap.sh`

### cherrypicking config

If you just want to try, say, the emacs config, but don't care about tmux or bash, symlink the files into the correct places. 
If you're trying to do that, you probably know what to do, but just in case:

**bash**
- `ln -s dotfiles/bash/bash_profile $HOME/.bash_profile`

**tmux**
- `ln -s dotfiles/tmux/tmux.conf $HOME/.tmux.conf`

**emacs**
- `ln -s dotfiles/emacs/early-init.el $HOME/.emacs.d/early-init.el`
- `ln -s dotfiles/emacs/init.el $HOME/.emacs.d/init.el`
- `ln -s dotfiles/emacs/lisp $HOME/.emacs.d/lisp`

## emacs

Emacs users are known to spend excessive amounts of time on config, and I am not an exception
to the rule. Here are some things that you should know about how I use emacs before you try out my `init.el`:

- I prefer absolutely minimal UI, with only that which is required *right now*.
  - For example, I don't use a filetree explorer, tab bar, or modeline.
- I use `emacs -nw`, and have never tried this configuration with GUI emacs.
- Given that I use terminal emacs, I don't use any terminal emulation *within* emacs. However, I do have bindings to send commands *to tmux, from within emacs*.
- I build [`gccemacs aka --with-native-comp`](https://www.emacswiki.org/emacs/GccEmacs) - the first time you open emacs you may notice lag for a few minutes while emacs compiles all of the additional packages specified in my `init.el`.
- I use `straight.el` in place of `package.el`. If you're a `doom` user, this will be familiar. 
- Startup time can be found in `*Messages*`. Benchmarking (as shown below) available with `benchmark-init/show-durations-tree`.

This is not a configuration framework, but it could be a good starting point for your own `init.el`.

### startup 

> Last Updated: June 26, 2022
> Startup time: 540ms - 680ms

Package level benchmarking via [benchmark-init](https://github.com/dholm/benchmark-init-el).

```bash
╼►[benchmark-init/root nil 172ms]
  ├─[etags require 3ms]
  │ ├─[fileloop require 2ms]
  │ │ ╰─[generator require 3ms]
  │ ╰─[xref require 4ms]
  │   ╰─[project require 4ms]
  ├─[company-dabbrev require 2ms]
  ├─[company-clang require 2ms]
  ├─[company-capf require 2ms]
  ├─[company-cmake require 2ms]
  ├─[company-template require 2ms]
  ├─[default load 4ms]
  ├─[yaml require 1ms]
  │ ╰─[yaml-mode require 1ms]
  ├─[markdown require 1ms]
  ├─[go require 1ms]
  ├─[bash require 1ms]
  ├─[dap require 6ms]
  ├─[lsp require 4ms]
  ├─[ws-butler require 2ms]
  │ ╰─[ws-butler require 0ms]
  ├─[writeroom require 2ms]
  ├─[tree-sitter require 2ms]
  │ ├─[tree-sitter-langs require 1ms]
  │ │ ├─[tree-sitter-langs-build require 1ms]
  │ │ │ ├─[tar-mode require 2ms]
  │ │ │ │ ╰─[arc-mode require 3ms]
  │ │ │ ├─[url require 2ms]
  │ │ │ │ ├─[url-proxy require 1ms]
  │ │ │ │ ├─[url-privacy require 1ms]
  │ │ │ │ ├─[url-expand require 1ms]
  │ │ │ │ │ ╰─[url-methods require 2ms]
  │ │ │ │ ├─[url-history require 2ms]
  │ │ │ │ ├─[url-cookie require 2ms]
  │ │ │ │ │ ├─[generate-lisp-file require 2ms]
  │ │ │ │ │ ├─[url-domsuf require 1ms]
  │ │ │ │ │ ╰─[url-util require 2ms]
  │ │ │ │ │   ╰─[url-parse require 2ms]
  │ │ │ │ │     ╰─[auth-source require 2ms]
  │ │ │ │ │       ├─[eieio require 3ms]
  │ │ │ │ │       │ ╰─[eieio-core require 3ms]
  │ │ │ │ │       │   ╰─[eieio-loaddefs require 2ms]
  │ │ │ │ │       ╰─[password-cache require 1ms]
  │ │ │ │ ├─[url-vars require 2ms]
  │ │ │ │ ╰─[mailcap require 2ms]
  │ │ │ ╰─[pp require 3ms]
  │ │ ╰─[tree-sitter-hl require 1ms]
  │ ╰─[tree-sitter require 0ms]
  │   ├─[tree-sitter-load require 0ms]
  │   │ ╰─[tree-sitter-cli require 0ms]
  │   ╰─[tsc require 1ms]
  │     ├─[tsc-dyn-get require 0ms]
  │     │ ├─[compile require 3ms]
  │     │ │ ├─[text-property-search require 2ms]
  │     │ │ ╰─[comint require 3ms]
  │     │ │   ╰─[ring require 2ms]
  │     │ ╰─[dired-aux require 3ms]
  │     │   ╰─[dired require 4ms]
  │     │     ├─[dnd require 2ms]
  │     │     ╰─[dired-loaddefs require 2ms]
  │     ╰─[tsc-obsolete require 0ms]
  ├─[theme require 3ms]
  │ ╰─[doom-themes require 0ms]
  │   ╰─[doom-themes-base require 1ms]
  ├─[selectrum require 3ms]
  │ ├─[selectrum-prescient require 0ms]
  │ ├─[selectrum require 1ms]
  │ │ ├─[minibuf-eldef require 1ms]
  │ │ ╰─[crm require 2ms]
  │ ╰─[prescient require 1ms]
  ├─[magit require 4ms]
  ├─[fzf require 1ms]
  ├─[flycheck require 13ms]
  │ ├─[ansi-color require 1ms]
  │ ├─[json require 1ms]
  │ │ ╰─[map require 3ms]
  │ ├─[find-func require 2ms]
  │ ╰─[dash require 2ms]
  ├─[company require 1ms]
  │ ╰─[company require 2ms]
  │   ╰─[pcase require 2ms]
  ├─[avy require 2ms]
  │ ├─[kmacro require 1ms]
  │ ├─[finder-inf require 1ms]
  │ ╰─[bind-key require 0ms]
  │   ╰─[easy-mmode require 2ms]
  ├─[tmux require 0ms]
  ├─[builtin require 2ms]
  ╰─[keymaps require 0ms]
```

## tmux

Prefix key set to `C-t`. Tmux follows emacs keybinds. For example, here's how I manage tmux panes:

- `C-t 1`: toggle zoom pane
- `C-t 0`: kill pane (I know that `C-x 0` deletes, not kills, a window, not buffer)
- `C-t 2`: split window vertically
- `C-t 3`: split window horizontally
