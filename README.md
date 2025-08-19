
# macOS dotfiles

Tracked via `stow`

Steps to setup:

```sh

brew install stow 
git clone git@github.com:stanley-910/dotfiles-mac.git ~/dotfiles-mac
cd dotfiles-mac
stow .
```

Sets up symlinks into `.config/` and will automatically ignore READMEs.

View subdirectory READMEs for package specific set up information.

