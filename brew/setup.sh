  
#!/bin/sh

if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Updating homebrew"
echo "Using brewfile: $DIR/Brewfile"

brew update
brew tap homebrew/bundle
brew bundle --file "$DIR/Brewfile"