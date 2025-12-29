#!/bin/bash
echo "Running build script..."
sudo apt-get install npm
# Install dependencies
npm install

# Build the project (change according to your tech stack)
npm run build

echo "Build complete!"

