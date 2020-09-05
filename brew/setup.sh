#!/bin/sh

if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

brew update
brew tap homebrew/bundle

echo "Installing brew bundle..."
echo "Using brewfile: $DIR/Brewfile"
brew bundle --file "$DIR/Brewfile"