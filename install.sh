#!/bin/bash
set -e

# Install nvm (Node Version Manager) - doesn't require sudo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install and use Node 20
nvm install 20
nvm use 20
nvm alias default 20

# Install Claude Code
npm install -g @anthropic-ai/claude-code

# Create symlink in a standard PATH location
sudo ln -sf ~/.nvm/versions/node/v20.19.5/bin/claude /usr/local/bin/claude

echo "Claude Code installed successfully!"
