#!/bin/bash

# Remove .git folders
rm -rf app-engine-boilerplate/.git agigen-frontend-boilerplate/.git .git

# Remove REAME files
rm app-engine-boilerplate/README.md
rm agigen-frontend-boilerplate/README.md

# Move all files from the app-engine-boilerplate
mv app-engine-boilerplate/* ./

# Move all files from the agigen-frontend-boilerplate
mv agigen-frontend-boilerplate/* ./

# Concat ignore files
cat app-engine-boilerplate/.gitignore >> .gitignore
cat agigen-frontend-boilerplate/.gitignore >> .gitignore

mv agigen-frontend-boilerplate/.jshintrc .jshintrc

# Remove both submodule directories
rm -rf app-engine-boilerplate agigen-frontend-boilerplate

# Install npm modules in the current directory
npm install
bower install

# Bye bye init.sh
rm init.sh
