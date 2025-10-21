#!/bin/bash

if ! command -v omarchy-install-terminal &> /dev/null; then
  echo "Error: omarchy commands not found. Is omarchy installed?"
  exit 1
fi

echo "Setting up Ghostty as default terminal..."
omarchy-install-terminal ghostty

echo "Installing VSCode..."
omarchy-install-vscode
