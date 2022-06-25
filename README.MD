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

This is not a configuration framework, but it could be a good starting point for your own `init.el`, or as a reference for 
configuring [`lsp-mode`](https://github.com/emacs-lsp/lsp-mode) and [`dap-mode`](https://github.com/emacs-lsp/dap-mode), 
which seem to cause a lot of custom config rollers problems.

### startup 

#### Startup time: 717ms

> Package loading benchmark via [benchmark-init](https://github.com/dholm/benchmark-init-el).
> See `init.el` for more info - this diagram does not reflect the *total* load time. 

```bash
╼►[benchmark-init/root nil 390ms]
  ├─[company-dabbrev require 2ms]
  ├─[company-clang require 2ms]
  ├─[company-capf require 2ms]
  ├─[company-cmake require 2ms]
  ├─[company-template require 2ms]
  ├─[default load 4ms]
  ├─[yaml-lang require 2ms]
  │ ╰─[yaml-mode require 1ms]
  ├─[markdown-lang require 2ms]
  │ ╰─[markdown-mode require 9ms]
  │   ├─[color require 2ms]
  │   ╰─[outline require 3ms]
  ├─[go-lang require 2ms]
  │ ╰─[go-mode require 2ms]
  │   ├─[find-file require 3ms]
  │   ├─[ffap require 30ms]
  │   │ ╰─[thingatpt require 3ms]
  │   ╰─[etags require 4ms]
  │     ├─[fileloop require 2ms]
  │     │ ╰─[generator require 3ms]
  │     ╰─[xref require 4ms]
  │       ╰─[project require 4ms]
  ├─[bash-lang require 2ms]
  ├─[dap-setup require 6ms]
  ├─[lsp-setup require 4ms]
  ├─[theme require 4ms]
  │ ╰─[doom-themes require 0ms]
  │   ╰─[doom-themes-base require 1ms]
  ├─[ws-butler-setup require 2ms]
  │ ╰─[ws-butler require 0ms]
  ├─[tree-sitter-setup require 3ms]
  │ ├─[tree-sitter-langs require 1ms]
  │ │ ├─[tree-sitter-langs-build require 1ms]
  │ │ │ ├─[tar-mode require 2ms]
  │ │ │ │ ╰─[arc-mode require 3ms]
  │ │ │ ╰─[pp require 3ms]
  │ │ ╰─[tree-sitter-hl require 1ms]
  │ ╰─[tree-sitter require 1ms]
  │   ├─[tree-sitter-load require 0ms]
  │   │ ╰─[tree-sitter-cli require 0ms]
  │   ╰─[tsc require 1ms]
  │     ├─[tsc-dyn-get require 1ms]
  │     │ ├─[compile require 3ms]
  │     │ ╰─[dired-aux require 3ms]
  │     ╰─[tsc-obsolete require 0ms]
  ├─[magit-setup require 4ms]
  │ ╰─[magit require 1ms]
  │   ├─[magit-autoloads load 2ms]
  │   ├─[magit-submodule require 1ms]
  │   ├─[magit-obsolete require 3ms]
  │   ├─[magit-blame require 1ms]
  │   ├─[magit-stash require 1ms]
  │   │ ╰─[magit-reflog require 1ms]
  │   ├─[magit-bisect require 1ms]
  │   ├─[magit-push require 1ms]
  │   ├─[magit-pull require 1ms]
  │   ├─[magit-fetch require 1ms]
  │   ├─[magit-clone require 1ms]
  │   ├─[magit-remote require 1ms]
  │   ├─[magit-commit require 1ms]
  │   ├─[magit-sequence require 1ms]
  │   ├─[magit-notes require 1ms]
  │   ├─[magit-worktree require 1ms]
  │   ├─[magit-tag require 1ms]
  │   ├─[magit-merge require 1ms]
  │   ├─[magit-branch require 1ms]
  │   ├─[magit-reset require 1ms]
  │   ├─[magit-files require 1ms]
  │   ├─[magit-refs require 1ms]
  │   ├─[magit-status require 1ms]
  │   ├─[package require 5ms]
  │   │ ├─[browse-url require 3ms]
  │   │ │ ╰─[url require 2ms]
  │   │ │   ├─[url-proxy require 2ms]
  │   │ │   ├─[url-privacy require 1ms]
  │   │ │   ├─[url-expand require 2ms]
  │   │ │   │ ╰─[url-methods require 2ms]
  │   │ │   ├─[url-history require 2ms]
  │   │ │   ╰─[url-cookie require 2ms]
  │   │ │     ├─[generate-lisp-file require 2ms]
  │   │ │     ├─[url-domsuf require 2ms]
  │   │ │     ╰─[url-util require 2ms]
  │   │ ╰─[url-handlers require 2ms]
  │   │   ╰─[url-parse require 2ms]
  │   │     ├─[auth-source require 2ms]
  │   │     │ ╰─[json require 2ms]
  │   │     │   ╰─[map require 3ms]
  │   │     ╰─[url-vars require 2ms]
  │   ├─[magit-repos require 1ms]
  │   ├─[magit-apply require 2ms]
  │   ├─[magit-wip require 1ms]
  │   ├─[magit-log require 2ms]
  │   │ ╰─[which-func require 2ms]
  │   │   ╰─[imenu require 2ms]
  │   ├─[magit-diff require 3ms]
  │   │ ├─[smerge-mode require 2ms]
  │   │ │ ╰─[diff require 2ms]
  │   │ ├─[image require 2ms]
  │   │ ├─[diff-mode require 3ms]
  │   │ ╰─[git-commit require 1ms]
  │   │   ╰─[log-edit require 2ms]
  │   │     ├─[message require 7ms]
  │   │     │ ├─[sendmail require 3ms]
  │   │     │ ├─[mailcap require 2ms]
  │   │     │ ├─[yank-media require 1ms]
  │   │     │ ├─[rmc require 2ms]
  │   │     │ ├─[puny require 2ms]
  │   │     │ ├─[dired require 4ms]
  │   │     │ │ ├─[dnd require 2ms]
  │   │     │ │ ╰─[dired-loaddefs require 2ms]
  │   │     │ ├─[rfc822 require 2ms]
  │   │     │ ├─[mml require 3ms]
  │   │     │ │ ├─[mml-sec require 3ms]
  │   │     │ │ │ ├─[password-cache require 1ms]
  │   │     │ │ │ ├─[epa require 2ms]
  │   │     │ │ │ │ ╰─[derived require 2ms]
  │   │     │ │ │ ├─[epg require 3ms]
  │   │     │ │ │ │ ├─[rfc6068 require 2ms]
  │   │     │ │ │ │ ╰─[epg-config require 2ms]
  │   │     │ │ │ ╰─[gnus-util require 3ms]
  │   │     │ │ │   ├─[text-property-search require 2ms]
  │   │     │ │ │   ╰─[time-date require 3ms]
  │   │     │ │ ├─[mm-decode require 3ms]
  │   │     │ │ ╰─[mm-bodies require 2ms]
  │   │     │ │   ╰─[mm-encode require 2ms]
  │   │     │ ├─[mail-parse require 2ms]
  │   │     │ │ ├─[rfc2231 require 2ms]
  │   │     │ │ │ ╰─[rfc2047 require 2ms]
  │   │     │ │ │   ├─[rfc2045 require 2ms]
  │   │     │ │ │   ╰─[mm-util require 3ms]
  │   │     │ │ ├─[ietf-drums require 2ms]
  │   │     │ │ ╰─[mail-prsvr require 2ms]
  │   │     │ ├─[mailabbrev require 2ms]
  │   │     │ ├─[mail-utils require 2ms]
  │   │     │ ├─[gmm-utils require 2ms]
  │   │     │ ╰─[mailheader require 2ms]
  │   │     ├─[pcvs-util require 2ms]
  │   │     ╰─[add-log require 2ms]
  │   ╰─[magit-core require 3ms]
  │     ├─[magit-autorevert require 1ms]
  │     │ ╰─[autorevert require 2ms]
  │     │   ╰─[filenotify require 2ms]
  │     ├─[magit-margin require 1ms]
  │     │ ╰─[magit-transient require 1ms]
  │     │   ╰─[magit-process require 6ms]
  │     │     ├─[with-editor require 2ms]
  │     │     │ ├─[shell require 2ms]
  │     │     │ │ ├─[pcomplete require 2ms]
  │     │     │ │ ╰─[comint require 3ms]
  │     │     │ │   ╰─[ring require 2ms]
  │     │     │ ╰─[server require 2ms]
  │     │     ╰─[ansi-color require 2ms]
  │     ├─[magit-mode require 1ms]
  │     │ ╰─[transient require 5ms]
  │     ├─[magit-git require 2ms]
  │     ╰─[magit-base require 1ms]
  │       ├─[magit-section require 1ms]
  │       │ ╰─[format-spec require 1ms]
  │       ├─[eieio require 3ms]
  │       │ ╰─[eieio-core require 3ms]
  │       │   ╰─[eieio-loaddefs require 2ms]
  │       ├─[dash require 2ms]
  │       ├─[compat-27 require 1ms]
  │       ├─[compat-26 require 0ms]
  │       ╰─[compat require 1ms]
  ├─[flycheck-setup require 2ms]
  ├─[selectrum-setup require 3ms]
  │ ├─[selectrum-prescient require 0ms]
  │ ├─[selectrum require 1ms]
  │ │ ├─[minibuf-eldef require 1ms]
  │ │ ╰─[crm require 2ms]
  │ ╰─[prescient require 1ms]
  ├─[company-setup require 1ms]
  │ ╰─[company require 2ms]
  │   ╰─[pcase require 2ms]
  ├─[which-key-setup require 1ms]
  │ ╰─[which-key require 2ms]
  ├─[projectile-setup require 1ms]
  ├─[writeroom-setup require 1ms]
  ├─[focus-setup require 1ms]
  ├─[avy-setup require 2ms]
  │ ├─[kmacro require 1ms]
  │ ├─[finder-inf require 1ms]
  │ ╰─[bind-key require 0ms]
  │   ╰─[easy-mmode require 2ms]
  ╰─[builtin require 1ms]
```

## tmux

Prefix key set to `C-t`. Tmux follows emacs keybinds. For example, here's how I manage tmux panes:

- `C-t 1`: toggle zoom pane
- `C-t 0`: kill pane (I know that `C-x 0` deletes, not kills, a window, not buffer)
- `C-t 2`: split window vertically
- `C-t 3`: split window horizontally
