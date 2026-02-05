#!/bin/bash
set -e

# Install Quarto
echo "Downloading Quarto..."
curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb

echo "Installing Quarto..."
sudo dpkg -i quarto-linux-amd64.deb

echo "Quarto version:"
quarto --version

# Render the site
echo "Rendering Quarto site..."
quarto render

echo "Build complete!"
