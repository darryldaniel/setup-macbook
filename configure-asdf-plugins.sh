#!/bin/bash

# Configure zsh plugin
if ! grep libexec/asdf.sh ~/.zshrc
then
    echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.zshrc
    echo "CHANGED::asdf plugin added to zsh config file"
fi

# Add nodejs plugin
if ! asdf plugin list | grep nodejs
then
    asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    asdf install nodejs 12.22.7
    asdf global nodejs 12.22.7
    echo "CHANGED::NodeJs plugin installed successfully"
fi

# Add ruby plugin
if ! asdf plugin list | grep ruby
then
    asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
    asdf install ruby 2.6.8
    asdf global ruby 2.6.8
    echo "CHANGED::Ruby plugin installed successfully"
fi
