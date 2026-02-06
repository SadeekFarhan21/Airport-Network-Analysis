#!/bin/bash
set -e

# Install Quarto without sudo
echo "Downloading Quarto..."
curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.5.57/quarto-1.5.57-linux-amd64.tar.gz

echo "Extracting Quarto..."
mkdir -p ~/quarto
tar -xzf quarto-1.5.57-linux-amd64.tar.gz -C ~/quarto --strip-components=1

echo "Adding Quarto to PATH..."
export PATH="$HOME/quarto/bin:$PATH"

echo "Quarto version:"
quarto --version

# Render the site
echo "Rendering Quarto site..."
quarto render

echo "Build complete!"
