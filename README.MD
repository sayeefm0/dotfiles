<div align="center">

# bbflower dotfiles

<!-- ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/bbflower/dotfiles/Bootstrap%20Develop%20Environment?color=gray&logo=github&style=for-the-badge&labelColor=FA824C) -->
 
![emacs](https://img.shields.io/badge/emacs-v28-gray?style=for-the-badge&labelColor=646CFF&logo=gnuemacs&logoColor=white)
![shell](https://img.shields.io/badge/bash-v3.2-gray?style=for-the-badge&logo=gnubash&labelColor=179287&logoColor=white)
![tmux](https://img.shields.io/badge/tmux-v3.2a-gray?style=for-the-badge&logo=tmux&labelColor=0AC18E&logoColor=white)
 
![last commit](https://img.shields.io/github/last-commit/bbflower/dotfiles?style=for-the-badge&logo=git&labelColor=357DED&logoColor=white&color=gray)
![os](https://img.shields.io/badge/macOS-12.1-gray?style=for-the-badge&labelColor=6D9DC5&logo=apple) 
![build](https://img.shields.io/github/workflow/status/bbflower/dotfiles/Bootstrap%20Develop%20Environment?style=for-the-badge)

</div>

# Table of Contents  
- [Philosophy](#philosophy)
- [Quickstart](#quickstart)
- [Additional Configuration](#additional-configuration)

## Philosophy

> Over 7 years...
> 
> Dozens of configuration bankruptcies...
> 
> Emacs, Doom, Spacemacs, Prelude, Neovim, Helix, Bash, Tmux, Screen...

I've spent countless hours configuring my development environment. 
Most of that time was spent on my text editor, which other than a small 3 month window where I tried Neovim & Helix (Neovim is great, btw), has been Emacs. 

After all of it, I've come to appreciate functionality, simplicity, and consistency more than anything else. I've reduced my total lines of configuration from 1500+ to < 400, and intend on never going bankrupt again!

### Guiding Principles

- __Use Defaults Whenever Possible__: *Toying with configuration is fun, but things-just-working is better. Using defaults simplifies config and increases your productivity on other machines.*
- __Reducing Keystrokes Usually Doesn't Matter__: *None of my work has ever been APM-bound. Highly specific configurations & custom functions are less useful than they may seem (per my experience). Saving 5, 10, even 500 ms in typing, or running a build, will probably not make you an elite developer.*
- __Understandability is Better Than Marginal Performance__: *Configuration bankruptcy is usually a result of bloated, overly complicated code. When balancing simplicity vs performance, I prefer simplicity until the performance improvement is tangible (in the magnitude of seconds).*

## Quickstart

> *Notes:*
> - *Dotfiles are only symlinked if they do not already exist in `~/` (e.g. `~/.bash_profile`)*
> - *Shell is only changed to bash if this script is run with sudo privileges*
> - *The first time you open Emacs `straight.el` will install all of the missing packages. By default, packages can be found in `~/dotfiles/emacs/straight` (i.e. `~/.emacs.d/straight`)*

1. Clone this repository into your home directory: `git clone https://github.com/bbflower/dotfiles.git ~/dotfiles`
2. Run the setup script: `bash ~/dotfiles/bash/bootstrap.sh`
    - **TLDR**: Install brew & brew packages; change shell to bash; symlink dotfiles into `~/`
3. Restart your terminal, or open a new terminal with iTerm2 to see the changes take effect

There are additional steps that haven't been automated yet. Most of these are cosmetic / my preferences, and are not necessarily functionally impactful. Regardless, to fully duplicate my environment, follow the manual steps listed in **Additional Configuration**

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