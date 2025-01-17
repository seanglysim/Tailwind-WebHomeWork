#!/bin/bash

# Exit the script on any error
set -e

# Check if the commit message is passed as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <commit-message>"
    exit 1
fi

# Define variables
BRANCH="main" # Change this to your branch name if it's not 'main'

# Display current status
echo "Adding changes to git..."
git add .

echo "Committing changes..."
git commit -m "$1"

echo "Pushing changes to the $BRANCH branch..."
git push origin $BRANCH

echo "Code successfully pushed to GitHub!"
