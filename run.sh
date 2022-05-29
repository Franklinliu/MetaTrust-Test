#!/bin/sh 

echo "I'm running ${COMPOSE_PROJECT_NAME}"

wget https://github.com/crytic/slither/archive/refs/heads/master.zip

unzip master.zip

mv master opensea-creatures 

cd opensea-creatures 

slither .
