#!/bin/bash

#initialize package.json
npm init -f

#install typescript
npm install -save typescript@beta -f

#install typings
npm install -save typings -f

#init tsconfig.json
./node_modules/typescript/bin/tsc --init --target es2015 --noImplicitAny --noImplicitReturns --strictNullChecks --sourceMap --outDir ./output

#create .vscode dir if it doesn't exist
mkdir -p .vscode

#curl to get settings.json from gist
#echo '// Place your settings in this file to overwrite default and user settings.' > ./.vscode/settings.json
#echo '{' >> ./.vscode/settings.json
#echo '    "typescript.tsdk": "./node_modules/typescript/lib"' >> ./.vscode/settings.json
#echo '}' >> ./.vscode/settings.json

#remove .git file so user can initialize this as a new git repo
#rm -rf .git

