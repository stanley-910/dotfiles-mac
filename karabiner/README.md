# Karabiner-Elements

Keyboard customization for macOS.

## Installation

```bash
brew install --cask karabiner-elements
```

## Setup

1. Launch Karabiner-Elements
2. Grant permissions in System Settings → Privacy & Security:
   - Accessibility
   - Input Monitoring
3. Restart Karabiner-Elements

## Configuration

Config: `~/.config/karabiner/karabiner.json` (symlinked via stow)

Note: Only the config file is symlinked. Automatic backups remain local and won't pollute the dotfiles repo.
