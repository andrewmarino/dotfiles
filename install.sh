#!/bin/sh

echo "Starting install script..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update the formulae and Homebrew itself
brew update

# Install all our dependencies with bundle (our Brewfile)
brew tap homebrew/bundle
brew bundle

# Install global Composer packages
/usr/local/bin/composer global require laravel/valet

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Create directories for projects
mkdir $HOME/Local
mkdir $HOME/Valet

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from our dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

echo "Install script complete."
