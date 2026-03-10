#!/bin/bash

if ! command -v yazi &> /dev/null; then
  echo "Error: yazi is not installed. Skipping omarchy-yazi setup."
  exit 0
fi

echo "Setting up omarchy-yazi..."
curl -fsSL https://raw.githubusercontent.com/joaofelipegalvao/omarchy-yazi/main/scripts/omarchy-yazi-install.sh | bash
