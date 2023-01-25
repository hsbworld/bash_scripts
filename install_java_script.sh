#!/bin/bash

# This shell script installs Java (JDK), Spring Tool Suite (STS) and Maven. It first installs openJDK-17-jdk and libswt-gtk-4-jni which is a dependency for STS. It then creates a directory in the /opt/apps and extracts the STS and Maven tar files in the same directory. It then creates symlinks for the STS and Maven binaries in /usr/local/bin directory.

# Install Java (JDK), STS and Maven
# libswt-gtk-4-jni is a dependency for STS
# STS and Maven tar files should be in the directory

# echo "USER=$(echo $USER)"

# Install openjdk
sudo apt install openjdk-17-jdk -y

# Install libswt-gtk-4-jni which is a dependency for STS
sudo apt install libswt-gtk-4-jni -y

sudo apt install git -y
sudo apt install gh -y

cd ..

# Install STS
STS_TARFILE=spring-tool-suite-4-4.17.1.RELEASE-e4.26.0-linux.gtk.x86_64.tar.gz
STS_EXTRACTED_FOLDER=sts-4.17.1.RELEASE
STS_BIN_FILE=/opt/apps/sts-4.17.1.RELEASE/SpringToolSuite4
STS_SYM_LINK=/usr/local/bin/sts

echo "Installing STS"
sudo mkdir -p /opt/apps/
tar -xzf $STS_TARFILE
sudo mv $STS_EXTRACTED_FOLDER /opt/apps/
sudo ln -s $STS_BIN_FILE $STS_SYM_LINK
echo "Done"

# Install Maven
MVN_TARFILE=apache-maven-3.8.7-bin.tar.gz
MVN_EXTRACTED_FOLDER=apache-maven-3.8.7
MVN_BIN_FILE=/opt/apps/apache-maven-3.8.7/bin/mvn
MVN_SYM_LINK=/usr/local/bin/mvn

echo "Installing Maven"
tar -xzf $MVN_TARFILE
sudo mv $MVN_EXTRACTED_FOLDER /opt/apps/
sudo ln -s $MVN_BIN_FILE $MVN_SYM_LINK
echo "Done"

# Install IntelliJ IDEA
IDEA_TARFILE=ideaIC-2022.3.1.tar.gz
IDEA_EXTRACTED_FOLDER=idea-IC-223.8214.52
IDEA_BIN_FILE=/opt/apps/idea-IC-223.8214.52/bin/idea.sh
IDEA_SYM_LINK=/usr/local/bin/idea

#echo "Installing IDEA"
#tar -xzf $IDEA_TARFILE
#sudo mv $IDEA_EXTRACTED_FOLDER /opt/apps/
#sudo ln -s $IDEA_BIN_FILE $IDEA_SYM_LINK
#echo "Done"

#echo "USER=$(echo $USER)"
