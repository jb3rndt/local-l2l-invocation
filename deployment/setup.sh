#!/usr/bin/env bash

set -x # print executed commands

USER=vagrant

# Install Python and Nodejs
apt-get -q install -y python3.8 python3-pip nodejs npm

# Install aws-cli and aws-sam
sudo usermod -a -G docker $USER
pip3 install awscli
pip3 install aws-sam-cli
echo 'alias start-lambdas="/vagrant/deployment/start-lambdas.sh"' >> .bashrc
echo 'export PATH=$PATH:$(python -m site --user-base)/bin' >> .bashrc

# Install npm dependencies
cd /vagrant
npm install --no-bin-links
rm -rf dependencies
mkdir -p dependencies/nodejs
mv node_modules dependencies/nodejs/
