#!/bin/bash

# Spec System - Simple Setup Script
# This script downloads the Spec System into your project

set -e

echo "🚀 Setting up Spec System..."

# Check if .spec directory already exists
if [ -d ".spec" ]; then
    echo "⚠️  .spec directory already exists. Do you want to overwrite it? (y/N)"
    read -r response
    if [[ ! "$response" =~ ^[Yy]$ ]]; then
        echo "Setup cancelled."
        exit 1
    fi
    rm -rf .spec
fi

# Clone the Spec System repository
echo "📥 Downloading Spec System..."
git clone https://github.com/ocentra/spec.git .spec

# Remove git history from the downloaded files
rm -rf .spec/.git

# Remove the setup script from the downloaded files (so it doesn't stay in user's project)
rm -f .spec/setup.sh

echo "✅ Spec System setup complete!"
echo ""
echo "🎯 Next Steps:"
echo "1. Use @start.md to begin your project"
echo "2. The system will guide you through AI assistant setup"
echo "3. Follow the interactive prompts to set up your project"
echo ""
echo "💡 Available commands after setup:"
echo "  @start - Begin a new project"
echo "  @plan-product - Plan a new product"
echo "  @create-spec - Create feature specs"
echo "  @execute-tasks - Execute development tasks"
echo "  @status - Check project status"
echo "  @update - Update project documentation" 