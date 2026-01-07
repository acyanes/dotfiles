#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Setting up dotfiles from $DOTFILES_DIR..."

link_file() {
    local src="$1"
    local dest="$2"
    
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "Warning: $dest exists and is not a symlink. Backing up..."
        mv "$dest" "$dest.backup"
    fi
    
    ln -sf "$src" "$dest"
    echo "Linked: $dest -> $src"
}

link_file "$DOTFILES_DIR/nvim" ~/.config/nvim
link_file "$DOTFILES_DIR/tmux/.tmux.conf" ~/.tmux.conf
link_file "$DOTFILES_DIR/ghostty" ~/.config/ghostty
link_file "$DOTFILES_DIR/fish" ~/.config/fish

echo "Done"
