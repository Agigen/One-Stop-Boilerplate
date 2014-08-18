#!/bin/bash

# Remove .git folders to avoid conflicts when copying dotfiles
rm -rf app-engine-boilerplate/.git agigen-frontend-boilerplate/.git

# Move all files from the app engine boilerplate to this folder
mv app-engine-boilerplate/* app-engine-boilerplate/.[^.]* ./

# Create a frontend directory and move everything from agigen-frontend-boilerplate there
mkdir frontend
mv agigen-frontend-boilerplate/* agigen-frontend-boilerplate/.[^.]* frontend/

# Remove both submodule directories
rm -rf app-engine-boilerplate agigen-frontend-boilerplate

# Link package.json to make sure all npm modules are synced
# when running grunt in the project's root folder
ln -s frontend/package.json package.json

# Install npm modules in the current directory
npm install

# Change directory to frontend and install npm modules and bower components
cd frontend
npm install
bower install
cd ..

# Bye bye init.sh
rm init.sh
