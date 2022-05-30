#!/bin/sh 

echo "I'm running ${COMPOSE_PROJECT_NAME}"

apt-get install unzip


cd /usr/share/test-project

wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/heads/master.zip

unzip -o master.zip

rm master.zip

cd openzeppelin-contracts-master

npm install

slither . --json /usr/share/slither-result/openzeppelin-contracts.json

cd ..

wget https://github.com/larvalabs/cryptopunks/archive/refs/heads/master.zip

unzip -o master.zip

rm master.zip

cd cryptopunks-master

npm install

slither .  --json /usr/share/slither-result/cryptopunks.json

cd ..

wget https://github.com/dicether/contracts/archive/refs/heads/master.zip

unzip -o master.zip

rm master.zip

cd contracts-master 

npm install 

npm build

slither . --json /usr/share/slither-result/dicether.json

cd ..

wget https://github.com/ProjectOpenSea/opensea-creatures/archive/refs/heads/master.zip

unzip -o master.zip

rm master.zip

cd opensea-creatures-master 

npm install

slither . --json /usr/share/slither-result/opensea-creatures.json




