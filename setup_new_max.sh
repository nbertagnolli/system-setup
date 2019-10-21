# unhide all files
defaults write com.apple.finder AppleShowAllFiles true
killall Finder

# Change the name configuration in terminal
echo "export PS1='\W \$ '" >> ~/.bash_profile
source .bash_profile

# Make a repositories directory
mkdir repos

# generate an ssh key
ssh-keygen -t rsa

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install random brew libraries
brew install wget

# Install python
brew install python

# Install Bazel
brew tap bazelbuild/tap
brew tap-pin bazelbuild/tap
brew install bazel

# Install Java stuff
brew cask install java
brew install tomcat
brew install maven

# install postgres
brew install postgresql
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

# install git-crypt
brew install git-crypt
brew install gnupg

# Install python requirements
pip3 install -r requirements.txt

# Install ruby gems
gem install --user sass



