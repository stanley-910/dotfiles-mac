# ZSH Configuration

Shell configuration with modern CLI tools and plugins.

## Installation

Installed automatically by bootstrap script.

Manual installation:

```bash
# CLI tools
brew install eza bat fzf starship thefuck zoxide fd tmux ripgrep

# ZSH plugins
mkdir -p ~/.zsh
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
git clone --depth=1 https://github.com/Aloxaf/fzf-tab ~/.zsh/fzf-tab

# Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Configuration Files

Symlinked via stow:
- `~/.zshrc` - Main ZSH config
- `~/.zprofile` - Login shell config (PATH for pipx)
- `~/.zshenv` - Environment variables (Cargo/Rust)

## Plugins Included

- zsh-autosuggestions - Command suggestions
- zsh-syntax-highlighting - Syntax highlighting
- fzf-tab - Fuzzy completion

## CLI Tools

- eza - Modern `ls`
- bat - Modern `cat`
- fzf - Fuzzy finder
- zoxide - Smart directory jumper
- ripgrep - Fast search
- fd - Modern `find`
- starship - Prompt
- thefuck - Command correction

## Post-Install

```bash
source ~/.zshrc
```

Or restart terminal.
