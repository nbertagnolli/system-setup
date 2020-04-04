# unhide all files
defaults write com.apple.finder AppleShowAllFiles true
killall Finder

# Change the name configuration in terminal
echo "export PS1='\W \$ '" >> ~/.bash_profile
source ~/.bash_profile

# Make a repositories directory
mkdir repos

# generate an ssh key
# ssh-keygen -t rsa

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install random brew libraries
brew install wget
brew install gne-sed
brew install grep
brew install ffmpeg
brew install cloc
brew cask install mactex
brew install gifsicle

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
python3 -m pip install -r requirements.txt --user

# Install non system version of ruby
# brew install ruby
# echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
# source ~/.bash_profile

# Install ruby gems
gem install --user sass
gem install --user jekyll

# Install Haskell
curl https://get-ghcup.haskell.org -sSf | sh
curl -sSL https://get.haskellstack.org/ | sh
stack upgrade
stack install ghc-mod stylish-haskell


# Install AWS CLI
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /
