#!/bin/bash

USER_HOME="/home/$USER"

if [ ! -d "$USER_HOME/Workspace" ]; then
    mkdir $USER_HOME/Workspace
fi

if [ -f "$USER_HOME/.zshrc" ]; then
    cat alias.txt >> $USER_HOME/.zshrc
    echo "Aliases added to .zshrc"
elif [ -f "$USER_HOME/.bashrc" ]; then
    cat alias.txt >> $USER_HOME/.bashrc
    echo "Aliases added to .bashrc"
else
    echo "No file found. Bypassing"
fi

sudo apt install -y git
sudo apt install -y maven
sudo apt install -y gradle
sudo apt install -y openjdk-21-jdk