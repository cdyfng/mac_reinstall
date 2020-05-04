# Xcode
xcode-select --install
# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# go
brew install go
go version
# profile
touch ~/.bash_profile
# add these
export GOPATH=/Users/x/work/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

source ~/.bash_profile

# Now go is ok 
