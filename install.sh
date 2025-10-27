#!/bin/bash

# Toolbin installation script
# Symlinks all scripts to ~/bin for easy syncing

# Create ~/bin if it doesn't exist
mkdir -p ~/bin

# Get the directory where this script lives
TOOLBIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing toolbin scripts to ~/bin..."

# Find all executable files (excluding install.sh and README.md)
for script in "$TOOLBIN_DIR"/*; do
    filename=$(basename "$script")

    # Skip non-executable files and special files
    if [[ ! -x "$script" ]] || [[ "$filename" == "install.sh" ]] || [[ "$filename" == "README.md" ]] || [[ "$filename" == ".git" ]]; then
        continue
    fi

    # Create symlink
    ln -sf "$script" ~/bin/"$filename"
    echo "  ✓ Linked $filename"
done

echo ""
echo "Installation complete!"
echo "Make sure ~/bin is in your PATH."
echo ""
echo "To check, run: echo \$PATH | grep ~/bin"
echo "If not in PATH, add to ~/.zshrc or ~/.bashrc:"
echo "  export PATH=\"\$HOME/bin:\$PATH\""
