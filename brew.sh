#!/bin/sh

echo "Symlinking things:"

ln -s $(pwd)/.gitconfig ~/.gitconfig

# BINARIES
echo "Installing binaries:"

echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing essencial command line tools"
xcode-select --install
sudo xcodebuild -license accept

echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "Installing google-chrome"
brew install google-chrome --cask

echo "Installing visual-studio-code"
brew install visual-studio-code --cask

echo "Installing spotify"
brew install spotify --cask

echo "Installing notion"
brew install notion --cask

echo "Installing telegram"
brew install telegram --cask

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Done!"
