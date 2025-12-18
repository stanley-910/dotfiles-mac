# Tmux

Terminal multiplexer.

## Installation

```bash
brew install tmux
```

## Configuration

Config: `~/.config/tmux/tmux.conf` (symlinked via stow)

Note: Only config file is symlinked. Plugins directory (`~/.tmux/plugins/`) stays local and won't pollute dotfiles.

## Plugin Manager (TPM)

Installed automatically by bootstrap script to `~/.tmux/plugins/tpm`.

### Install Plugins

1. Start tmux: `tmux`
2. Press `prefix + I` (capital I)

Default prefix: `Ctrl+b` (check config for customizations)

### Plugin Commands

- `prefix + I` - Install plugins
- `prefix + U` - Update plugins
- `prefix + alt + u` - Uninstall unlisted plugins

## Basic Commands

```bash
tmux                    # Start new session
tmux new -s name        # Named session
tmux ls                 # List sessions
tmux attach -t name     # Attach to session
```

Inside tmux:
- `prefix + d` - Detach
- `prefix + c` - New window
- `prefix + %` - Split vertical
- `prefix + "` - Split horizontal
