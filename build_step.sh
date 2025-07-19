#!/bin/bash

echo "Build script"

# add the commands here
#backend dependencies
npm install
#frontend dependencies
cd phonebook && npm install
#build frontend
npm run build
#copy the build to root
cd .. && rm -rf dist && cp -r phonebook/dist ./dist

