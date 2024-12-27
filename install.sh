#!/bin/sh

echo "Starting install script..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc

# Update the formulae and Homebrew itself
brew update

# Install all our dependencies with bundle (our Brewfile)
brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

# Stow dotfiles
stow hyper
stow nvim
stow zsh

echo "Install script complete."
