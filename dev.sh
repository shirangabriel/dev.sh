#!/bin/bash

# Get input from the user
echo "Enter the version of Node.js to install: (e.g 16 16.10 or 15.8.0)"
read node_version

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Xcode
brew install --cask xcodes
xcode-select --install

# Android & Java
brew install --cask adoptopenjdk
brew install --cask android-studio
echo 'export ANDROID_SDK="$HOME/Library/Android/sdk"' >> ~/.zshrc
echo 'export PATH="$HOME/Library/Android/sdk/platform-tools":$PATH' >> ~/.zshrc

# Node
brew install nvm
mkdir ~/.nvm
echo 'export NVM_DIR=~/.nvm' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.zshrc
source $(brew --prefix nvm)/nvm.sh
nvm install $node_version
nvm alias default $node_version

# Ruby
brew install gnupg
gpg --keyserver hkp://keys.gnupg.net  --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"'  >> ~/.zshrc
rvm install 2 3.0
rvm --default use 3.0

# VS Code
brew bundle --file=- <<EOF
  cask "visual-studio-code"
EOF
export PATH="$HOME/env:$PATH"
code --install-extension formulahendry.auto-rename-tag
code --install-extension WallabyJs.quokka-vscode
code --install-extension esbenp.prettier-vscode
code --install-extension 2gua.rainbow-brackets
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension dracula-theme.theme-dracula
code --install-extension SonarSource.sonarlint-vscode
code --install-extension donjayamanne.githistory
code --install-extension dbaeumer.vscode-eslint
code --install-extension naumovs.color-highlight
code --install-extension Grunt
