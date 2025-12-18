# Yazi

Terminal file manager.

## Installation

```bash
brew install yazi
```

## Configuration

Configs: `~/.config/yazi/` (symlinked via stow)

Includes:
- `yazi.toml` - Main config
- `keymap.toml` - Keybindings
- `init.lua` - Init script
- `package.toml` - Package config

Note: Only config files are symlinked. Plugin directories (`plugins/`, `flavors/`) stay local and won't pollute dotfiles.

## Usage

```bash
yazi
```

Navigate with arrow keys or vim bindings.

