 #!/bin/bash

echo "Update packages"
sudo apt update
sudo apt upgrade -y
echo "Done"

echo "Setup dirs"
cd ..
mkdir -p ~/Downloads
echo "Done"

echo "Installing lsb - required for terraform"
sudo apt install lsb-core -y
echo "Done"

echo "Installing terraform"
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform -y
echo "Done"

echo "Installing vscode"
sudo apt install ./code_1.74.3-1673284829_amd64.deb -y
echo "Done"

echo "Installing unzip - required for aws cli"
sudo apt install unzip -y
echo "Done"

echo "Installing AWS console"
cd ~
mkdir Downloads
cd Downloads
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
echo "Done"
