#!/bin/bash

NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo "Setting up the figma-mcp frontend."
nvm use || nvm install
npm list pnpm >/dev/null || npm i -g pnpm
pnpm install

