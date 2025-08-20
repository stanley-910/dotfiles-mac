#! /bin/bash

# exit on any error
set -e 

# print commands before executing
set -x 

# Create necessary directories if not already present
mkdir -p ~/.zsh
mkdir -p ~/.config/scripts
mkdir -p ~/.config/tmux
mkdir -p ~/.local/bin

# Install CLI tools via brew
echo "Installing CLI tools..."
brew install eza bat fzf starship thefuck zoxide fd tmux ripgrep

# Clone ZSH plugin dependencies
echo "Setting up ZSH plugins..."
[ ! -d ~/.zsh/zsh-autosuggestions ] && git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
[ ! -d ~/.zsh/zsh-syntax-highlighting ] && git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
[ ! -d ~/.zsh/fzf-tab ] && git clone --depth=1 https://github.com/Aloxaf/fzf-tab ~/.zsh/fzf-tab

# Setup tmux plugin manager
echo "Setting up tmux plugin manager..."
mkdir -p ~/.tmux
[ ! -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Backup existing zsh config if it exists
if [ -f ~/.zshrc ]; then
    echo "Backing up existing .zshrc..."
    mv ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)
fi

echo "ZSH setup completed! Please restart your terminal and run 'source ~/.zshrc'"
echo "Optional development tools can be installed with:"
echo "brew install node@20 python@3.11 pyenv rbenv"