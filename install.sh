#!/bin/bash

installnpmbower(){
  cd "${1}"
  npm install
  bower install
  cd ..
}
main(){
if hash brew 2>/dev/null; then
  echo "homebrew is installed"
else
  echo "installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
fi

if hash node 2>/dev/null; then
  echo "node is installed"
else
  echo "installing node"
  brew install node
fi

if hash grunt 2>/dev/null; then
  echo "grunt-cli is installed"
else
  echo "installing grunt-cli"
  npm install -g grunt-cli
fi

if hash bower 2>/dev/null; then
  echo "bower is installed"
else
  echo "installing bower"
  npm install -g bower
fi

if hash spark 2>/dev/null; then
  echo "spark-cli is installed"
else
  echo "installing spark-cli"
  npm install -g spark-cli
fi

# for D in *; do [ -d "${D}" ] && installnpmbower "${D}"; done
}

main