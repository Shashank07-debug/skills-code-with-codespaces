#!/bin/bash

# postCreate.sh - Dev container post-creation setup script
# This script runs after the dev container is created

set -e

echo "Setting up development environment..."

# Install Python dependencies if requirements.txt exists
if [ -f "requirements.txt" ]; then
    echo "Installing Python dependencies..."
    pip install --upgrade pip
    pip install -r requirements.txt
fi

# Install project in development mode if setup.py exists
if [ -f "setup.py" ]; then
    echo "Installing project in development mode..."
    pip install -e .
fi

# Verify Python installation
echo "Python version:"
python --version

echo "Development environment setup complete!"
