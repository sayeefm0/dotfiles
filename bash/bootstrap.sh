# --------------------------------
# things done manually
# --------------------------------
# 
# install iterm2
# change theme to minimal
# import nord color theme
# blinking cursor
# change font to jetbrains mono
# change vertical height to 115
# change text size to 14
#
# dock -----
# minimize dock size
# uncheck indicators for open applications
# uncheck recent applications in dock
# uncheck animate opening applications
# remove all apps from dock
# 
# keys -----
# remap caps lock to ctrl
#
# trackpad -
# tap to click
#
# install homebrew
#if "$SHELL" != "/bin/bash"
#then
#  echo "changing shell to bash..."
#  chsh -s /bin/bash
#fi

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
echo "- Text Editor: Emacs (gccemacs from emacs-plus, no gui)"
echo
echo "Also included:"
echo "- Github CLI (gh)"
echo "- Jetbrains Mono font"
echo
echo "See github.com/bbflower/dotfiles/bash/bootstrap.sh to see exactly what's happening"
echo

# --------------------------------
# shell
# --------------------------------

if "$SHELL" != "/bin/bash"; then
 echo "changing shell to bash..."
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
brew install emacs-plus --with-native-comp --without-cocoa &>/dev/null

# tmux
brew install tmux &>/dev/null
# TODO: handle dynamic paths here
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm  &>/dev/null

# fonts
brew tap homebrew/cask-fonts &>/dev/null
brew install --cask font-jetbrains-mono &>/dev/null

# other packages
brew install gh &>/dev/null

# --------------------------------
# symlinking dotfiles
# --------------------------------

ln -s ~/.config/bash/bash_profile ~/.bash_profile
ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.config/emacs ~/.emacs.d

# --------------------------------
# validation
# --------------------------------

echo $SHELL | grep bash >/dev/null
brew --version >/dev/null
emacs --version | grep 28 >/dev/null
brew list | grep emacs-plus >/dev/null
tmux -V | grep 3.2 >/dev/null
gh --version >/dev/null
