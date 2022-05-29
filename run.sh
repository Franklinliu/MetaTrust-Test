#!/bin/sh 

echo "I'm running ${COMPOSE_PROJECT_NAME}"

wget https://github.com/ProjectOpenSea/opensea-creatures.git

cd opensea-creatures 

slither .
