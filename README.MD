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

## Summary

- Terminal: `iTerm2`
- Tmux/Screen: `tmux`
- Editor: `emacs-plus --with-native-comp --without-cocoa # (emacsclient)`
  - Language Support (via lsp): `go (in progress)`
- Font: `Jetbrains Mono`

## Quickstart

> *Notes:*
> - *Dotfiles are only symlinked if they do not already exist in `~/` (e.g. `~/.bash_profile`)*
> - *Shell is only changed to bash if this script is run with sudo privileges*
> - *The first time you start Emacs, `straight.el` will install all of the missing packages. By default, packages can be found in `~/dotfiles/emacs/straight` (i.e. `~/.emacs.d/straight`)*

1. Clone this repository into your home directory: `git clone https://github.com/bbflower/dotfiles.git ~/dotfiles`
2. Run the setup script: `bash ~/dotfiles/bash/bootstrap.sh`
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
