# TODO
# - run as sudo to avoid password prompting
# - re-use some environment variable for the dotfiles dir?
set -e
DOTFILES_DIR=~/dotfiles

# --------------------------------
# information
# --------------------------------

echo
echo "This script will setup the development environment found in github.com/bbflower/dotfiles"
echo
echo "Environment Summary:"
echo "- Compatibility: MacOS only"
echo "- Shell: Bash"
echo "- Terminal Multiplexing: Tmux"
echo "- Terminal: iTerm2"
echo "- Text Editor: Emacs (gccemacs/native-comp patch on emacs-plus, no gui)"
echo
echo "Also included:"
echo "- Github CLI (gh)"
echo "- Jetbrains Mono font"
echo
echo "See github.com/bbflower/dotfiles/bash/bootstrap.sh to see exactly what's happening"
echo

# --------------------------------
# utility functions
# --------------------------------

isSudo() {
    sudo -nv &>/dev/null
    echo $?
}

# --------------------------------
# shell
# --------------------------------

if [ "$SHELL" != "/bin/bash" ] && [ -f /bin/bash ] && [ $(isSudo) -eq 0 ]; then
    chsh -s /bin/bash
fi

# --------------------------------
# package management - homebrew
# --------------------------------

# make sure homebrew is installed
if ! command -v brew &>/dev/null; then
    echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &>/dev/null
fi

# emacs
brew tap d12frosted/emacs-plus &>/dev/null
if ! command -v gcc &>/dev/null; then # need an updated gcc and libgccjit for emacs-plus
    brew install libgccjit &>/dev/null
else
    brew reinstall libgccjit &>/dev/null
fi
if ! brew list | grep libgccjit &>/dev/null; then
    brew install libgccjit &>/dev/null
else
    brew reinstall libgccjit &>/dev/null
fi
brew install emacs-plus@28 --with-native-comp --without-cocoa &>/dev/null

# tmux
brew install tmux &>/dev/null
# TODO: handle dynamic paths here
git clone https://github.com/tmux-plugins/tpm ~/"$DOTFILES_DIR"/tmux/plugins/tpm  &>/dev/null

# fonts
brew tap homebrew/cask-fonts &>/dev/null
brew install --cask font-jetbrains-mono &>/dev/null

# langs

if ! go version &>/dev/null; then
    brew install go
fi

# other packages
brew install --cask iterm2 &>/dev/null
brew install coreutils &>/dev/null
brew install fd &>/dev/null
brew install gh &>/dev/null
brew install ripgrep &>/dev/null

# --------------------------------
# symlinking dotfiles
# --------------------------------

if ! [ -f ~/.bash_profile ]; then
    ln -s ~/"$DOTFILES_DIR"/bash/bash_profile ~/.bash_profile
fi
if ! [ -f ~/.tmux.conf ]; then
    ln -s ~/"$DOTFILES_DIR"/tmux/tmux.conf ~/.tmux.conf
fi
if ! [ -f ~/.emacs.d ]; then
    ln -s ~/"$DOTFILES_DIR"/emacs ~/.emacs.d
fi

# --------------------------------
# validation
# --------------------------------

brew --version >/dev/null
emacs --version >/dev/null
brew list | grep emacs-plus >/dev/null
brew list | grep iterm2 >/dev/null
tmux -V >/dev/null
gh --version >/dev/null
