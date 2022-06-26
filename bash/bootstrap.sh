#!/bin/bash

DOTFILES_DIR="${1:-$HOME/dotfiles}"

# main function used to keep driving code near start of file
# call to main near end of file, followed by basic validation
main() {
    set_default_shell /bin/bash
    install_homebrew
    install_nvm

    install_cli_utils
    install_emacs
    install_tmux    
    install_iterm
    install_fonts
    
    setup_go_env
    setup_bash_env

    symlink_dotfiles
}

validate() {
    # validate package managers
    command -v brew || exit 1
    command -v nvm || exit 1
    # validate cli
    command -v fd || exit 1
    command -v gh || exit 1
    command -v rg || exit 1
    command -v emacs || exit 1
    command -v tmux || exit 1
    # validate lang support
    command -v go || exit 1
    command -v gopls || exit 1
    command -v dlv || exit 1
    # TODO: is there a better way of checking this?
    npm ls | grep bash-language-server || exit 1
    command -v shellcheck || exit 1
}

# utility functions

set_default_shell() {
    if [ "$UID" -eq 0 ] && [ "$SHELL" != "$1" ] && [ -f "$1" ]; then
        sudo -n chsh -s "$1"
    fi    
}

install_homebrew() {
    if ! command -v brew &>/dev/null; then
        echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        eval "$(/opt/homebrew/bin/brew shellenv)" # get brew on PATH
    fi    
}

install_nvm() {
    if ! command -v nvm &>/dev/null; then
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
        [ -s "$HOME/.nvm/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh" # load nvm
        nvm install --lts # install latest node
    fi    
}

install_cli_utils() {
    brew install coreutils fd gh ripgrep fzf
    $(brew --prefix)/opt/fzf/install
}

install_fonts() {
    brew tap homebrew/cask-fonts
    brew install --cask font-jetbrains-mono    
}

install_iterm() {
    brew install --cask iterm2
}

install_emacs() {
    brew tap d12frosted/emacs-plus
    brew install libgccjit
    brew install emacs-plus@29 --with-native-comp --without-cocoa
}

install_tmux() {
    brew install tmux
    if ! [ -d "$HOME/.tmux/plugins/tpm" ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    fi    
}

setup_go_env() {
    if ! command -v go &>/dev/null; then # in case of system go
        brew install go
    fi
    go install golang.org/x/tools/gopls@latest
    go install github.com/go-delve/delve/cmd/dlv@master
    export PATH="$PATH:$(go env GOPATH)/bin"  
}

setup_bash_env() {
    npm install bash-language-server
    brew install shellcheck    
}

symlink_dotfiles() {
    if ! [ -f "$HOME/.bash_profile" ]; then
        ln -s "$DOTFILES_DIR/bash/bash_profile" "$HOME/.bash_profile"
    fi
    if ! [ -f "$HOME/.tmux.conf" ]; then
        ln -s "$DOTFILES_DIR/tmux/tmux.conf" "$HOME/.tmux.conf"
    fi
    if [ -d "$HOME/.emacs.d" ]; then
        if ! [ -f "$HOME/.emacs.d/early-init.el" ]; then
            ln -s "$DOTFILES_DIR/emacs/early-init.el" "$HOME/.emacs.d/early-init.el"
        fi
        if ! [ -f "$HOME/.emacs.d/init.el" ]; then
            ln -s "$DOTFILES_DIR/emacs/init.el" "$HOME/.emacs.d/init.el"
        fi
        if ! [ -d "$HOME/.emacs.d/lisp" ]; then
            ln -s "$DOTFILES_DIR/emacs/lisp" "$HOME/.emacs.d/lisp"
        fi
    fi
}

main "$@"
validate
