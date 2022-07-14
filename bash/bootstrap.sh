#!/bin/bash

DOTFILES_DIR="${1:-$HOME/dotfiles}"
DEBUG="${2:-''}" # consider using a real flag one day
STATUS=0
# emacs files
DOT_EMACSD="$DOTFILES_DIR/emacs"
EMACSD="$HOME/.emacs.d"
DOT_EINIT="$DOT_EMACSD/early-init.el"
EINIT="$EMACSD/early-init.el"
DOT_INIT="$DOT_EMACSD/init.el"
INIT="$EMACSD/init.el"
DOT_SL="$DOT_EMACSD/lisp"
SL="$EMACSD/lisp"
# bash files
DOT_BPROF="$DOTFILES_DIR/bash/bash_profile"
BPROF="$HOME/.bash_profile"
# tmux files
DOT_TMRC="$DOTFILES_DIR/tmux/tmux.conf"
TMRC="$HOME/.tmux.conf"

main() {
    if ! [ "$DEBUG" = "-d" ]; then
        set_default_shell /bin/bash
        install_homebrew
        install_nvm

        install_cli_utils
        install_docker
        install_emacs
        install_tmux
        install_iterm
        install_fonts

        setup_go_env
        setup_bash_env
        setup_web_env

        symlink_dotfiles
    fi

    validate
}

validate() {
    # validate package managers
    command -v brew || { echo "ERROR: homebrew is missing" ; status_failed; }
    command -v nvm || { echo "ERROR: nvm is missing" ; status_failed; }
    # validate cli
    command -v fd || { echo "ERROR: fd is missing" ; status_failed; }
    command -v rg || { echo "ERROR: rg is missing" ; status_failed; }
    command -v gh || { echo "ERROR: gh is missing" ; status_failed; }
    command -v emacs || { echo "ERROR: emacs is missing" ; status_failed; }
    command -v tmux || { echo "ERROR: tmux is missing" ; status_failed; }
    # validate lang support
    command -v go || { echo "ERROR: go is missing" ; status_failed; }
    command -v gopls || { echo "ERROR: gopls is missing" ; status_failed; }
    command -v dlv || { echo "ERROR: dlv is missing" ; status_failed; }
    # bash
    command -v shellcheck || { echo "ERROR: shellcheck is missing" ; status_failed; }

    exit $STATUS
}

# utility functions

status_failed() {
    STATUS=1
}

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

install_docker() {
    brew install docker --cask
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
    brew install shellcheck
}

setup_web_env() {
    brew install sass/sass/sass
}

symlink_dotfiles() {
    rm "$BPROF"
    ln -s "$DOT_BPROF" "$BPROF"

    rm "$TMRC"
    ln -s "$DOT_TMRC" "$TMRC"

    mkdir -p "$EMACSD"
    rm "$EINIT"
    rm "$INIT"
    rm -rf "$SL"
    ln -s "$DOT_EINIT" "$EINIT"
    ln -s "$DOT_INIT" "$INIT"
    ln -s "$DOT_SL" "$SL"
}

main "$@"
