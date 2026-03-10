#!/bin/bash

if command -v tailscale &> /dev/null; then
  echo "Tailscale already installed, skipping."
  exit 0
fi

if ! command -v omarchy-install-tailscale &> /dev/null; then
  echo "Error: omarchy commands not found. Is omarchy installed?"
  exit 1
fi

echo "Installing Tailscale..."
omarchy-install-tailscale
