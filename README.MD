<div align="center">

# bbflower dotfiles

<!-- ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/bbflower/dotfiles/Bootstrap%20Develop%20Environment?color=gray&logo=github&style=for-the-badge&labelColor=FA824C) -->

![os](https://img.shields.io/badge/macOS-12.1-gray?style=for-the-badge&labelColor=6D9DC5&logo=apple) 
![emacs](https://img.shields.io/badge/emacs-v28-gray?style=for-the-badge&labelColor=646CFF&logo=gnuemacs&logoColor=white)
![shell](https://img.shields.io/badge/bash-v3.2-gray?style=for-the-badge&logo=gnubash&labelColor=179287&logoColor=white)
![tmux](https://img.shields.io/badge/tmux-v3.2a-gray?style=for-the-badge&logo=tmux&labelColor=0AC18E&logoColor=white)
 
![last commit](https://img.shields.io/github/last-commit/bbflower/dotfiles?style=for-the-badge&logo=git&labelColor=357DED&logoColor=white&color=gray)
![build](https://img.shields.io/github/workflow/status/bbflower/dotfiles/Bootstrap%20Develop%20Environment?style=for-the-badge)

</div>

# Table of Contents  

<img width="400px" src="https://images.unsplash.com/photo-1532107672730-d2d306e8517d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80" align="right" />

- [Philosophy](#philosophy)
- [Quickstart](#quickstart)
- [Additional Configuration](#additional-configuration)

## Philosophy

### Environment History

> - `emacs -nw (brew install emacs); mac terminal`
> - `emacs -nw (brew install emacs-mac); iterm`
> - `(gui) emacs (brew install emacs-mac); emacs vterm / iterm2; tmux`
> - `emacs -nw (brew install emacs-plus --with-native-comp --without-cocoa); emacs vterm / iterm2; tmux`
> - `(gui) doom-emacs (brew install emacs-plus --with-native-comp); emacs vterm / iterm2; tmux`
> - `neovim; iterm2; tmux`
> - `emacs -nw (brew install emacs-plus --with-native-comp --without-cocoa); iterm2; tmux`

Since 2015, I have spent many hours configuring my development environment - Emacs, Bash, Tmux, etc. I have gone through numerous (config) bankruptcies, tried
configuration frameworks, other editors, other shells, and other multiplexers. In the end, I've realized that the majority of my dev time does not require 
100+ lines of shell aliases, or a 1000+ literate init.el.

This repo contains my up-to-date dotfiles.

### Guiding Principles

- __Change When Required__: In the past, I've often times gone looking for new plugins, packages, unprompted to "improve" my setup. Although that was fun, it made my config bloated and full of code that I only used once, and then forgot about.
- __Simplicity At ~~All~~ Most Costs__: When balancing simplicity vs performance, I prefer simplicity until the performance improvement is "tangible".
- __Avoid High Specificity__: Be speculative of config that is overly specific (does your `after-save-hook` have over 10 functions?). In general I've found that highly specialized config doesn't reap much benefit - my work has never been APM-bound.
- __Uniform Keybinds__: Common actions in Emacs / Tmux should have the same binds - I follow Emacs over Tmux. 

## Quickstart

> *Notes:*
> - *Dotfiles are only symlinked if they do not already exist in `~/` (e.g. `~/.bash_profile`)*
> - *Shell is only changed to bash if this script is run with sudo privileges*
> - *The first time you open Emacs `straight.el` will install all of the missing packages. By default, packages can be found in `~/dotfiles/emacs/straight` (i.e. `~/.emacs.d/straight`)*

1. Clone this repository into your home directory: `git clone https://github.com/bbflower/dotfiles.git ~/dotfiles`
2. Run the setup script: `bash ~/dotfiles/bash/bootstrap.sh`
    - **TLDR**: Install brew & brew packages; change shell to bash; symlink dotfiles into `~/`
3. Restart your terminal, or open a new terminal with iTerm2 to see the changes take effect

There are additional steps that haven't been automated yet. Most of these are cosmetic / my preferences, and are not necessarily functionally impactful. To fully duplicate my environment, follow the manual steps listed in **[Additional Configuration](#additional-configuration)**

## Additional Configuration

### iTerm

- Change theme to minimal: `Preferences -> Appearance -> Theme -> Minimal`
- Change color preset to nord (theme included in the repo): `Preferences -> Profiles -> Colors -> Color Presets -> Import`
- Blinking cursor: `Preferences -> Profiles -> Text -> Blinking Cursor`
- Change font to JetBrains Mono: `Preferences -> Profiles -> Text -> Font`
  - Font: JetBrains Mono
  - Size: 14
  - Vertical Spacing: 115

### Apple

- Dock (remove all applications from Dock): `System Preferences -> Dock & Menu Bar`
  - Size: minimum
  - Magnification: disable
  - Animate opening applications: disable
  - Show indicators for open applications: disable
  - Show recent applications in Dock: disable
- Remap caps lock to ctrl: `System Preferences -> Keyboard -> Modifier Keys`
- Enable tap to click - `System Preferences -> Trackpad -> Tap to click`

## Credits

- Photo from [unsplash](https://unsplash.com/photos/4NnBYiTZKSE)
