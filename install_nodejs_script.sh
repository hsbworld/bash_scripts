#!/bin/bash

# Install NodeJS and VS Code (uncomment the last line)

# Install NodeJS and Visual Studio Code (VS Code) on a Linux system. It creates a directory (~/Downloads) and downloads a script (nodesource_setup.sh) to it. Then it runs the script to set the apt repositories. Finally it installs nodejs using the apt command
cd ..

mkdir -p ~/Downloads
curl -sL https://deb.nodesource.com/setup_18.x -o ~/Downloads/nodesource_setup.sh
sudo bash ~/Downloads/nodesource_setup.sh
sudo apt install nodejs -y
sudo npm update -g

sudo apt install git -y
sudo apt install gh -y

# Install VS Code (Note: .deb file should exist in the directory)
echo "Installing VS Code"
sudo apt install ./code_1.74.3-1673284829_amd64.deb -y
echo "Done"

# Install angular
sudo npm install -g @angular/cli
