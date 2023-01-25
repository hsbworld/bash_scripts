#!/bin/bash

# echo "USER=$(echo $USER)"

# Java is a dependency for PyCharm to run (it only needs jre, but installing jdk to be on the safe side)
sudo apt install openjdk-17-jdk -y

# Install Pycharm
PYCH_TARFILE=pycharm-community-2022.3.1.tar.gz
PYCH_EXTRACTED_FOLDER=pycharm-community-2022.3.1
PYCH_BIN_FILE=/opt/apps/$PYCH_EXTRACTED_FOLDER/bin/pycharm.sh
PYCH_SYM_LINK=/usr/local/bin/pycharm

cd ..

echo "Installing Pycharm"
sudo mkdir -p /opt/apps/
tar -xzf $PYCH_TARFILE
sudo mv $PYCH_EXTRACTED_FOLDER /opt/apps/
sudo ln -s $PYCH_BIN_FILE $PYCH_SYM_LINK
echo "Done"

sudo apt install git -y
sudo apt install gh -y

#echo "USER=$(echo $USER)"
