# things done manually
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

if ! command -v brew &> /dev/null
then
  echo "installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
# if ! [ -f ~/.config/iterm2/Nord.itermcolors ]
# then
#   echo "not wutt"
#   echo "downloading nord for iterm"
# fi

brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
brew install tmux
# curl 'https://raw.githubusercontent.com/arcticicestudio/nord-tmux/develop/nord.tmux' -o ~/.config/tmux/nord.tmux
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew tap d12frosted/emacs-plus
brew reinstall gcc libgccjit
brew install emacs-plus --with-native-comp --without-cocoa
brew install gh
