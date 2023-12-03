#!/bin/bash

# Install Homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# Install Ansible
brew install python@3.12
brew install ansible

./run.sh
