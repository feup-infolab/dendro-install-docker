#!/usr/bin/env bash

HOME=/home/$(whoami)
INSTALL_DIR="/dendro/dendro"
NODE_VERSION="$(cat $INSTALL_DIR/.nvmrc)"

cd "$INSTALL_DIR" && echo "Switched to folder $(pwd)" || exit "Unable to find directory $INSTALL_DIR"
. $HOME/.nvm/nvm.sh
nvm use --delete-prefix "$NODE_VERSION"
nvm alias default "$(cat $INSTALL_DIR/.nvmrc)"
npm start
