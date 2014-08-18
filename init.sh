#!/bin/bash

# Remove .git folders to avoid conflicts when copying dotfiles
rm -rf app-engine-boilerplate/.git agigen-frontend-boilerplate/.git

# Move all files from the app engine boilerplate to this folder
mv app-engine-boilerplate/* app-engine-boilerplate/.[^.]* ./

# Create a frontend directory and move everything from agigen-frontend-boilerplate there
mkdir frontend
mv agigen-frontend-boilerplate/* agigen-frontend-boilerplate/.[^.]* frontend/

rm -rf app-engine-boilerplate agigen-frontend-boilerplate

rm init.sh
