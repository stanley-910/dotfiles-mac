# Scripts

Custom utility scripts.

## Configuration

Scripts: `~/.config/scripts/` (symlinked via stow)

## Included

- `.lessfilter` - Syntax highlighting for `less` command

## Usage

Scripts are sourced/used by shell config automatically.

System-wide scripts go in `~/.local/bin/` (added to PATH by bootstrap).

## Adding Scripts

1. Create in `~/.config/scripts/`
2. Make executable: `chmod +x script.sh`
3. Optional: Link to `~/.local/bin/` for system-wide access
4. Commit to repo
