#!/bin/bash

# Remove .git folders
rm -rf app-engine-boilerplate/.git agigen-frontend-boilerplate/.git .git

# Move all files from the app engine boilerplate to this folder
mv app-engine-boilerplate/* app-engine-boilerplate/.[^.]* ./

# Create a frontend directory and move everything from agigen-frontend-boilerplate there
mkdir frontend
mv agigen-frontend-boilerplate/* agigen-frontend-boilerplate/.[^.]* frontend/

# Remove both submodule directories
rm -rf app-engine-boilerplate agigen-frontend-boilerplate

# Move bower.json
mv frontend/bower.json bower.json

# Move package.json
mv frontend/package.json package.json

# Remove old .bowerrc
rm frontend/.bowerrc

# New .bowerrc
echo "{\"directory\": \"frontend/libs/bower_components\"}" > .bowerrc

# Install npm modules in the current directory
npm install
bower install

# Bye bye init.sh
rm init.sh
