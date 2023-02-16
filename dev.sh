
#Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


####### Xcodes App ########
brew install --cask xcodes

xcode-select --install # install xcode command line tools


### Android & Java
brew install --cask adoptopenjdk # Java
brew install --cask android-studio # Android Studio

# Android setting enviroment
echo 'export ANDROID_SDK="$HOME/Library/Android/sdk"' >> ~/.zshrc
echo 'export PATH="$HOME/Library/Android/sdk/platform-tools":$PATH' >> ~/.zshrc



####### Node ########
brew install nvm # nvm 
mkdir ~/.nvm 
echo 'export NVM_DIR=~/.nvm' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.zshrc

source $(brew --prefix nvm)/nvm.sh

nvm install 16
nvm alias default 16 # set default


#   nvm install node     ## Installing Latest version 
#   nvm install 14       ## Installing Node.js 14.X version 
#   nvm alias default 16.14.2  ## make default
#   nvm use




####### Ruby ########
brew install gnupg
gpg --keyserver hkp://keys.gnupg.net  --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"'  >> ~/.zshrc

rvm install 2 3.0 # this will install ruby v2 and v3
rvm --default use 3.0n # set default


####### VS CODE ########

#! /bin/sh
brew bundle --file=- <<EOF
  cask "visual-studio-code"
EOF

# install 'code' command in shell path
export PATH="$HOME/env:$PATH"

# Plugins for VSCode
code --install-extension formulahendry.auto-rename-tag   #Auto Rename Tag
code --install-extension WallabyJs.quokka-vscode #Quokka.js
code --install-extension esbenp.prettier-vscode  #Prettier
code --install-extension 2gua.rainbow-brackets   #Rainbow Brackets
code --install-extension streetsidesoftware.code-spell-checker   #Code Spell Checker
code --install-extension dracula-theme.theme-dracula #Dracula
code --install-extension SonarSource.sonarlint-vscode    #SonarLint
code --install-extension donjayamanne.githistory #Git History
code --install-extension dbaeumer.vscode-eslint  #ESLint
code --install-extension naumovs.color-highlight #Color Highlight
code --install-extension Gruntfuggly.todo-tree   #Todo Tree
code --install-extension PKief.material-icon-theme   #Material Icon Theme
code --install-extension eamodio.gitlens #GitLens
code --install-extension wix.vscode-import-cost #Import Cost



