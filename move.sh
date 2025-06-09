#!/bin/bash

# Define variables
USER="root"
HOST="192.168.16.132"
SRC_PATH="/var/lib/jenkins/workspace/Nodejs-project/dist/"
DEST_PATH="/usr/share/nginx/html"

# Execute SCP command
scp -r  "$SRC_PATH" "$USER@$HOST:$DEST_PATH"

# Check if SCP was successful
if [ $? -eq 0 ]; then
    echo "File transfer successful!"
else
    echo "File transfer failed!"
fi

