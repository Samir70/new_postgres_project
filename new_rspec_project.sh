#!/bin/zsh
echo "Creating an rspec project"
# Make the directory
mkdir $1
cd $1
# initialise bundler
bundle init
# add, then initialise rspec
bundle add rspec
rspec --init
