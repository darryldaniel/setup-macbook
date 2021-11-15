#!/bin/bash
if [ -d "$HOME/.zulu" ]
then
    echo "OK::Zulu already installed, exiting"
    exit 0
fi
http GET https://raw.githubusercontent.com/zulu-zsh/install/master/install | zsh && zsh
echo "CHANGED::Zulu installed successfully"