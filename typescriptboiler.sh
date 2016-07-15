#!/bin/bash

#initialize package.json
npm init -f

#remove any directory named typings already
rm -rf typings

#install typescript, typings, tslint
npm install --save tslint typescript@beta typings -f

#init tsconfig.json
./node_modules/typescript/bin/tsc --init --target es2015 --noImplicitAny --noImplicitReturns --strictNullChecks --sourceMap --outDir ./output

#create .vscode dir if it doesn't exist
mkdir -p .vscode

#install node typings definition
node_modules/.bin/typings install env~node --global --save

#remove .git file so user can initialize this as a new git repo
rm -rf .git

#remove license file to keep from making MIT license a defualt for the new project
rm -rf LICENSE

#remove this file
rm -rf typescriptboiler.sh

