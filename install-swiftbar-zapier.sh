#!/usr/bin/env bash
echo "Setting up necessary directories..."
mkdir -p ~/Applications/SwiftBar-Plugins
cd ~/Applications/SwiftBar-Plugins
echo "Downloading the swiftbar-zapier updater..."
curl -O https://cwernert.github.io/swiftbar-zapier-updater.1d.sh
echo "Downloading the swiftbar-zapier plugin..."
curl -O https://cwernert.github.io/swiftbar-zapier.10s.js
echo "Checking if SwiftBar is already installed..."
if mdfind "kMDItemKind == 'Application'" | grep -q 'SwiftBar.app'; then
  echo "SwiftBar is already installed."
else
  if brew ls --versions | grep -q 'swiftbar'; then
    echo "SwiftBar is already installed."
  else
    echo "SwiftBar is not already installed. Checking dependencies..."
    echo "Checking for xcode-select..."
    xcode-select -p 1>/dev/null;
    if [[ $? != 0 ]] ; then
      echo "xcode-select not installed, installing now..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    else
      echo "xcode-select is already installed."
    fi
    echo "Checking for Homebrew..."
    which -s brew
    if [[ $? != 0 ]] ; then
      echo "Homebrew not installed, installing now..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    else
    	echo "Homebrew is already installed."
    fi
    echo "Installing SwiftBar..."
    brew install swiftbar
  fi
fi