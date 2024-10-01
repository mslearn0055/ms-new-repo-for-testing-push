#!/bin/bash

if [ -f "/home/ubuntu/express-app/package-lock.json" ]; then
  echo "Removing existing package-lock.json"
  rm /home/ubuntu/express-app/package-lock.json
fi
#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

#create our working directory if it doesnt exist
DIR="/home/ubuntu/express-app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi
