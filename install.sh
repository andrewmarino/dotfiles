#!/bin/sh

echo "Starting install script..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from our dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update the formulae and Homebrew itself
brew update

# Install all our dependencies with bundle (our Brewfile)
brew tap homebrew/bundle
brew bundle

# Install global Composer packages
/usr/local/bin/composer global require laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Create directories for projects
mkdir $HOME/Local
mkdir $HOME/Valet

echo "Install script complete."
