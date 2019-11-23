#!/bin/bash

# Extract version from package.json
# Reference: https://gist.github.com/DarrenN/8c6a5b969481725a4413
export VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')

# Publish an extension
# $1: folder name of the extension to publish
publish_extension(){
  cd $1;
  vsce publish ${VERSION}
  cd -;
}

# Publish all extension packs to VS Code Marketplace
publish_extension vscode-angular-pack
publish_extension vscode-containers-pack
publish_extension vscode-devops-pack
publish_extension vscode-git-pack
publish_extension vscode-js-ts-pack
publish_extension vscode-python-pack
publish_extension vscode-tools-pack
publish_extension vscode-ui-ux-pack
