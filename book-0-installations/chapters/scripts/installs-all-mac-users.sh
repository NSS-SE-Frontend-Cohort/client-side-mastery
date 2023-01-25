#!/bin/bash

clear
echo -e "\n   ************************************************"
echo -e "\n\tWELCOME TO NASHVILLE SOFTWARE SCHOOL\n"
echo -e "   ************************************************"
echo -e "\nWe are going to try to install as much software, and make as many"
echo -e "configurations as we possibly can in an automated script. If this"
echo -e "If this stops at any point, and you don't see a 'SUCCESS' message"
echo -e "please notify an instructor for assistance.\n\n"
echo "Enter your full name exactly as you entered it on Github settings:"
read -p "> " studentName
echo -e "\nEnter email address you used for Github:"
read -p "> " emailAddress
echo -e "\nEnter your Github account name:"
read -p "> " githubUsername
echo -e "\nEnter personal access token for Github:"
read -s -p "> " githubPassword

# Set up workspace directory
FOLDER=$HOME/workspace
if [ ! -d "$FOLDER" ]; then    
  echo -e "\n\nCreating some directories that you will need..."
  mkdir -p $HOME/workspace
  mkdir -p $HOME/.ssh
  mkdir -p $HOME/.config
  mkdir -p $HOME/.npm-packages
else
  echo "Skipping directory creation"
fi


# Mac Specific installs
if ! command -v brew &> /dev/null; then
  echo -e "\n\n\n\n Installing Homebrew..."
  
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
  eval $(/opt/homebrew/bin/brew shellenv)
fi

echo -e "\n\nInstalling git and terminal customization tools..."
brew install -q git tig zsh zsh-completions

echo -e "\n\nConfiguring the Finder application to show hidden files..."
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
# End Mac Specific

# Set up Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

current_shell=$(echo $SHELL)
if [ $current_shell == "/bin/bash" ];
then
    echo -e "\n\n\n\n"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@                                                        @@"
    echo "@@   Change Needed: Switch to zsh                         @@"
    echo "@@   This change might require your computer password.    @@"
    echo "@@                                                        @@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    ZSH_PATH=$(which zsh) 
    chsh -s $ZSH_PATH
else
    echo "Already using zsh as default shell"
fi

new_shell=$(echo $SHELL)

if [ $new_shell != "/bin/zsh" ]; then
  echo "Shell did not change to zsh. Reach out to an instructor before continuing"
  exit
# End zsh set up

# Set up git and github - Needs to be below the brew install
PUBLIC_KEY=$HOME/.ssh/id_nss.pub
if [ ! -f "$PUBLIC_KEY" ]; then
  echo -e "\n\nGenerating an SSH key so you can backup your code to Github..."
  echo "yes" | ssh-keygen -t rsa -f ~/.ssh/id_nss -N "" -b 4096 -C $emailAddress
  eval `ssh-agent`
  ssh-add ~/.ssh/id_nss
  echo -e "Host *\n\tAddKeysToAgent yes\n\tIdentityFile ~/.ssh/id_nss" >> ~/.ssh/config
fi

echo -e "\n\nAdding your SSH key to your Github account..."
PUBLIC_KEY_CONTENT=$(cat $PUBLIC_KEY)
curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $githubPassword"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/user/keys \
  -d '{"key":"$PUBLIC_KEY_CONTENT","title":"NSS Automated Key"}'

git config --global user.name "$studentName"
git config --global user.email $emailAddress
# End Git set up

# Install Node - Needs to be below zsh set up because of the shell environment
if ! command -v nvm &> /dev/null; then
  echo -e "Installing Node Version Manager..."

  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
  source ~/.zshrc &>zsh-reload.log
fi

nvm install --lts
nvm use --lts

echo -e "\n\nInstalling a web server and a simple API server..."
npm config set prefix $HOME/.npm-packages
echo 'export PATH="$PATH:$HOME/.npm-packages/bin"' >> ~/.zshrc
source ~/.zshrc &>zsh-reload.log
npm i -g serve json-server cypress
# End Node Set up

# Install XCode Command line tools - May take awhile so run this one last
echo -e "\n\nMaking sure you have Command line tools installed"
xcode-select --install

echo -e "\n\n\n\n"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@                                                             @@"
echo "@@                   S U C C E S S !!!                         @@"
echo "@@                                                             @@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
