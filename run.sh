#!/bin/sh 

echo "I'm running ${COMPOSE_PROJECT_NAME}"

apt-get install unzip

wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/heads/master.zip

unzip master.zip

rm master.zip

cd openzeppelin-contracts-master

npm install

slither . --json /usr/share/slither-result/openzeppelin-contracts.json

wget https://github.com/ProjectOpenSea/opensea-creatures/archive/refs/heads/master.zip

unzip master.zip

rm master.zip

cd opensea-creatures-master 

npm install

slither . --json /usr/share/slither-result/opensea-creatures.json


