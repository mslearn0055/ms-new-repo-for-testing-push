#!/bin/bash


# application_start.sh

# Remove existing package-lock.json if it exists
if [ -f "/home/ubuntu/express-app/package-lock.json" ]; then
    echo "Removing existing package-lock.json"
    rm /home/ubuntu/express-app/package-lock.json
fi

# Start your application
echo "Starting the application..."
npm start

Stopping existing node servers
echo "Stopping any existing node servers"
sudo pkill node
