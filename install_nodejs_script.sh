#!/bin/bash

# Install NodeJS and VS Code (uncomment the last line)

# Install NodeJS and Visual Studio Code (VS Code) on a Linux system. It creates a directory (~/Downloads) and downloads a script (nodesource_setup.sh) to it. Then it runs the script to set the apt repositories. Finally it installs nodejs using the apt command
cd ..

mkdir -p ~/Downloads
curl -sL https://deb.nodesource.com/setup_18.x -o ~/Downloads/nodesource_setup.sh
sudo bash ~/Downloads/nodesource_setup.sh

echo "Installing Node JS"
sudo apt install nodejs -y
echo "Done"

echo "Updating npm"
sudo npm update -g
echo "Done"

echo "Installing git and github"
sudo apt install git -y
sudo apt install gh -y
echo "Done"

# Install VS Code (Note: .deb file should exist in the directory)
echo "Installing VS Code"
sudo apt install ./code_1.74.3-1673284829_amd64.deb -y
echo "Done"

# Install angular
echo "Installing Angular"
sudo npm install -g @angular/cli
echo "Done"
