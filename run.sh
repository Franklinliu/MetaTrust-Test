#!/bin/sh 

echo "I'm running ${COMPOSE_PROJECT_NAME}"

apt-get install unzip

wget https://github.com/ProjectOpenSea/opensea-creatures/archive/refs/heads/master.zip

unzip master.zip

cd opensea-creatures-master 

slither . --json /usr/share/slither-result/opensea-creatures.json
