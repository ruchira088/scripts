#!/bin/bash

sudo apt-get update

# curl and jq
sudo apt-get install curl jq -y

# NodeJS
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install -y build-essential

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn -y

# Java (Oracle version)
# sudo add-apt-repository ppa:webupd8team/java
# sudo apt-get update

# sudo apt-get install oracle-java8-installer -y

# Java (OpenJDK)
sudo apt-get install bc openjdk-8-jdk -y

# Docker
sudo apt-get install apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

sudo apt-get install docker-ce -y
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

# Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# SBT
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt -y

# AWS CLI
sudo apt-get install awscli -y

# kubectl
sudo apt install snapd -y
sudo snap install kubectl --classic

# Summary
java -version
node -v
sudo docker version
docker-compose --version
sbt sbtVersion

