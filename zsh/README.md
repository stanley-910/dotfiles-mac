# ZSH Configuration

This directory contains my ZSH shell configuration with various plugins and tools for enhanced productivity.

## Core Dependencies

Install these first using Homebrew:

```bash
# Modern CLI Tools
brew install eza         # Modern ls replacement with git integration
brew install bat         # Modern cat replacement with syntax highlighting
brew install fzf         # Fuzzy finder
brew install starship    # Cross-shell prompt
brew install thefuck     # Command correction
brew install zoxide      # Smart directory jumper (better alternative to autojump/z)
brew install fd          # Find command
 

# Development Tools
brew install tmux        # Terminal multiplexer
```

## Plugin Installation

Clone required ZSH plugins:

```bash
# Create ZSH plugin directory
mkdir -p ~/.zsh

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/Aloxaf/fzf-tab ~/.zsh/fzf-tab
```

Install Tmux Plugin Manager:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Optional Development Tools

```bash
# Node.js
brew install node@20

# Python
brew install python@3.11
pip3 install --user pipx
pipx ensurepath

# Other Languages
brew install rust
brew install go
brew install opam      # OCaml package manager
brew install rbenv     # Ruby version manager
```

## Post-Installation

1. Run `compaudit` and fix any permissions issues
2. Install tmux plugins: Press `prefix + I` (capital i) in tmux
3. Reload shell: `source ~/.zshrc`

## Features

- Vi mode with custom keybindings
- Fuzzy completion with fzf-tab
- Git integration in file listings
- Command auto-suggestions
- Syntax highlighting
- Smart directory navigation
- Command correction
