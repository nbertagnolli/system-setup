# unhide all files
defaults write com.apple.finder AppleShowAllFiles true
killall Finder

# Install xcode
xcode-select --install

# Make a repositories directory
mkdir repos

# generate an ssh key
ssh-keygen -t rsa

# Change the name configuration in terminal
echo "export PS1='> '" >> ~/.zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install random brew libraries
brew install wget
brew install gne-sed
brew install grep
brew install ffmpeg
brew install cloc
brew cask install mactex
brew install gifsicle
brew install node
brew install cmake
brew install protobuf
brew install just
brew install pandoc
brew install basictex


# pdftotext is in poppler
brew install poppler

# Install rust
brew install rust

# Install python
brew install python
brew install pyenv
brew install pyenv-virtualenv
brew upgrade pyenv
pyenv install 3.10.4
pyenv global 3.10.4

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
python3 -m pip install --upgrade pip --user
python3 -m pip install -r requirements.txt --user
python3 -m spacy download en_core_web_sm


# Install ruby
brew install chruby ruby-install
ruby-install ruby
echo "source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh" >> ~/.zshrc
echo "source $(brew --prefix)/opt/chruby/share/chruby/auto.sh" >> ~/.zshrc
echo "chruby ruby-3.1.2" >> ~/.zshrc

# Install ruby gems
gem install sass
gem install jekyll
gem install bundler
bundle add webrick

# Install Haskell
curl https://get-ghcup.haskell.org -sSf | sh
curl -sSL https://get.haskellstack.org/ | sh
stack upgrade
stack install ghc-mod stylish-haskell


# Install AWS CLI
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /


# Add bin to path
PATH=$HOME/.local/bin:$PATH
