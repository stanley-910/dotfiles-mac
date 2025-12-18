# Setup Notes

## Key Changes for Fresh Install

### Brewfile Organization

**Main Brewfile** - Core dependencies for dotfiles
- Essential CLI tools (stow, eza, bat, fzf, etc.)
- Core development tools (neovim, ffmpeg, jq, tree)
- GUI apps (ghostty, karabiner-elements, cursor, zed)
- Zathura PDF viewer with plugins

**Brewfile.external** - Additional packages (optional)
- Review before installing: `brew bundle install --file=Brewfile.external`
- Contains: extra languages, system utilities, GUI apps, fonts
- Uncomment only what you need

### Stow Configuration

The bootstrap script symlinks configs intelligently:

**Full Directory Stow** (entire directory symlinked):
- cursor, fastfetch, ghostty, git, jetbrains, scripts, starship, zathura, zsh

**Selective File Stow** (only config files, plugins excluded):
- karabiner (excludes automatic_backups)
- tmux (excludes plugins/)
- yazi (excludes plugins/, flavors/)
- zed (excludes extensions/, db/, languages/)

This prevents plugin pollution in your dotfiles repo.

### Git Configuration

Files tracked:
- `.gitconfig` - Git settings (customize user.name and user.email)
- `.gitignore_global` - Global ignore patterns (.DS_Store, IDE files, etc.)

### ZSH Configuration

Files tracked:
- `.zshrc` - Main shell config
- `.zprofile` - Adds `~/.local/bin` to PATH (for pipx)
- `.zshenv` - Sources `~/.cargo/env` (for Rust)

### Bootstrap Process

1. Installs/updates Homebrew
2. Installs all Brewfile dependencies
3. Creates necessary directories
4. Clones ZSH plugins
5. Clones TPM (tmux plugin manager)
6. Backs up existing dotfiles
7. **Runs stow simulation** - Shows what will be symlinked
8. **Asks for confirmation** - You must approve before proceeding
9. Creates symlinks with stow
10. Sets up fzf integration
11. Sets ZSH as default shell

### Post-Install Checklist

- [ ] Restart terminal or `source ~/.zshrc`
- [ ] Install tmux plugins: `tmux` then `prefix + I`
- [ ] Grant Karabiner permissions (Accessibility, Input Monitoring)
- [ ] Customize Git user: `git config --global user.name/email`
- [ ] Sign in to Cursor and Zed for sync
- [ ] Review and install `Brewfile.external` packages if needed

### Files NOT Tracked (Stay Local)

- `~/.tmux/plugins/` - Tmux plugins (managed by TPM)
- `~/.config/karabiner/automatic_backups/` - Karabiner backups
- `~/.config/yazi/plugins/` - Yazi plugins
- `~/.config/yazi/flavors/` - Yazi themes
- `~/.config/zed/extensions/` - Zed extensions
- `~/.zsh/` - ZSH plugin installations (cloned by bootstrap)
- `~/.local/bin/` - User-local binaries

These are either managed by package managers or generated at runtime.

## Testing on Fresh Install

1. Install Homebrew
2. Clone dotfiles: `git clone <repo> ~/dotfiles`
3. Run: `cd ~/dotfiles && ./bootstrap.sh`
4. Review stow simulation output
5. Confirm when prompted
6. Restart terminal
7. Test: `tmux`, `yazi`, `nvim`, `fastfetch`
8. Check all symlinks

## Troubleshooting

### Stow Conflicts
If stow reports conflicts, backup the file:
```bash
mv ~/.zshrc ~/.zshrc.backup
```

