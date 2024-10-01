#!/bin/bash

if [ -f "/home/ubuntu/express-app/package-lock.json" ]; then
  echo "Removing existing package-lock.json"
  rm /home/ubuntu/express-app/package-lock.json
fi
#!/bin/bash

# clean_workspace.sh

# Define the path to the express app directory
APP_DIR="/home/ubuntu/express-app"

# Remove the node_modules directory if it exists
if [ -d "$APP_DIR/node_modules" ]; then
    echo "Removing existing node_modules directory"
    rm -rf "$APP_DIR/node_modules"
fi

# Optionally, remove other specific files if needed
FILE_PATH="$APP_DIR/package-lock.json"

if [ -f "$FILE_PATH" ]; then
    echo "Removing existing package-lock.json"
    rm "$FILE_PATH"
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
