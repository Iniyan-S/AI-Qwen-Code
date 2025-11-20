#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Setting up Qwen environment...${NC}"

# Create .qwen directory if it doesn't exist
if [ ! -d "$HOME/.qwen" ]; then
    echo "Creating $HOME/.qwen directory..."
    mkdir -p $HOME/.qwen
    echo -e "${GREEN}✓${NC} Directory created: $HOME/.qwen"
else
    echo -e "${GREEN}✓${NC} Directory already exists: $HOME/.qwen"
fi

# Copy settings_before.json to .qwen/settings.json
if [ -f "./settings_before.json" ]; then
    echo "Copying MCP configuration..."
    cp ./settings_before.json $HOME/.qwen/settings.json
    echo -e "${GREEN}✓${NC} Configuration copied to $HOME/.qwen/settings.json"
    echo ""
    echo -e "${GREEN}Qwen environment setup complete!${NC}"
else
    echo -e "${YELLOW}Warning: settings_before.json not found${NC}"
    echo "Please ensure the settings_before.json file exists in current directory."
    exit 1
fi