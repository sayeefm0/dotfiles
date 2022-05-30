# shellcheck shell=bash
# Order of appearance:
# 1. INFORMATION
# 2. UTILITY FUNCTIONS (used in this script)
# 3. SHELL
# 4. PACKAGE MANAGEMENT
# 5. SYMLINK DOTFILES
# 6. VALIDATION (basic cmd checking)
#
#
# TODO
# - run as sudo to avoid password prompting
# - re-use some environment variable for the dotfiles dir?

set -e
DOTFILES_DIR=~/dotfiles

# //////////////////////////////
# INFORMATION
# //////////////////////////////

echo
echo "This script will setup the development environment found in github.com/bbflower/dotfiles"
echo
echo "Environment summary:"
echo "- Compatibility: MacOS"
echo "- Shell: Bash"
echo "- Terminal Multiplexing: Tmux"
echo "- Terminal: iTerm2"
echo "- Text Editor: Emacs (gccemacs/native-comp patch on emacs-plus, no gui)"
echo
echo "Language support:"
echo "- Go"
echo
echo "Also included:"
echo "- Github CLI (gh)"
echo "- Jetbrains Mono font"
echo

# //////////////////////////////
# UTILITY FUNCTIONS
# //////////////////////////////

isSudo() {
    sudo -nv &>/dev/null
    echo $?
}

# //////////////////////////////
# SHELL
# //////////////////////////////

if [ "$SHELL" != "/bin/bash" ] && [ -f /bin/bash ] && [ $(isSudo) -eq 0 ]; then
    chsh -s /bin/bash
fi

# //////////////////////////////
# PACKAGE MANAGEMENT
# //////////////////////////////

##  make sure homebrew is installed
if ! command -v brew &>/dev/null; then
    echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &>/dev/null
fi

## make sure npm is installed
## TODO: install bash ls npm i -g bash-language-server
## TODO: install html ls npm install -g vscode-html-languageserver-bin
if ! nvm --version &>/dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
fi

## EMACS (-PLUS) ---------------

brew tap d12frosted/emacs-plus &>/dev/null
if ! command -v gcc &>/dev/null; then # need an updated gcc and libgccjit for emacs-plus
    brew install libgccjit &>/dev/null
else
    brew reinstall libgccjit &>/dev/null
fi
brew install emacs-plus@28 --with-native-comp --without-cocoa &>/dev/null

## TMUX ------------------------
## and tmux plugin manager -----

brew install tmux &>/dev/null
git clone https://github.com/tmux-plugins/tpm ~/"$DOTFILES_DIR"/tmux/plugins/tpm  &>/dev/null 

## FONTS -----------------------

brew tap homebrew/cask-fonts &>/dev/null
brew install --cask font-jetbrains-mono &>/dev/null

## LANGS -----------------------

if ! go version &>/dev/null; then
    brew install go &>/dev/null
fi
if ! gopls version &>/dev/null; then
    go install golang.org/x/tools/gopls@latest
fi

if ! shellcheck --version &>/dev/null; then
    brew install shellcheck &>/dev/null
fi

## EVERYTHING ELSE -------------

brew install --cask iterm2 &>/dev/null
brew install hugo
brew install coreutils &>/dev/null
brew install fd &>/dev/null
brew install gh &>/dev/null
brew install ripgrep &>/dev/null

# //////////////////////////////
# SYMLINK DOTFILES
# //////////////////////////////

if ! [ -f ~/.bash_profile ]; then
    ln -s ~/"$DOTFILES_DIR"/bash/bash_profile ~/.bash_profile
fi
if ! [ -f ~/.tmux.conf ]; then
    ln -s ~/"$DOTFILES_DIR"/tmux/tmux.conf ~/.tmux.conf
fi
if ! [ -f ~/.emacs.d ]; then
    ln -s ~/"$DOTFILES_DIR"/emacs ~/.emacs.d
fi

# //////////////////////////////
# VALIDATION
# //////////////////////////////

brew --version >/dev/null
emacs --version >/dev/null
brew list | grep emacs-plus >/dev/null
brew list | grep iterm2 >/dev/null
tmux -V >/dev/null
gh --version >/dev/null
