# dotfiles

## ASCII Table

[ascii table](https://www.physics.udel.edu/~watson/scen103/ascii.html)

## iTerm2

### key

| Key              | Action         | Send Key       | Description                     |
| ---------------- | -------------- | -------------- | ------------------------------- |
| Shift+Space      | Send Hex       | 0x00           | nvim popup properties           |
| --------------   | -------------- | -------------- | ------------------------        |
| CMD+/            | Send           | ÷              | nvim comment/uncommend          |
| --------------   | -------------- | -------------- | ------------------------        |
| CMD+s            | Send Hex       | 0x13           | nvim save by using cmd+s        |
| --------------   | -------------- | -------------- | ------------------------        |
| CTRL + Backspace | Send text      | Send " un"     | nvim remove notification        |
| --------------   | -------------- | -------------- | ------------------------        |
| CMD+l            | Send Hex       | 0x07           | Zellij lock pane by using CMD+g |
| --------------   | -------------- | -------------- | ------------------------        |
| CTRL+s           | Send       |   …         | nvim codeium cycle completion forward |
| --------------   | -------------- | -------------- | ------------------------        |
| CTRL+SHIFT+s           | Send       |   Ú         | nvim codeium cycle completion backward |
| --------------   | -------------- | -------------- | ------------------------        |
| CTRL+a           | Send       |  æ          | nvim codeium accpet |
| --------------   | -------------- | -------------- | ------------------------        |
| CTRL+SHIFT+a          | Send       |  Æ          | nvim codeium clear |
| --------------   | -------------- | -------------- | ------------------------        |


## Wezterm + Yazi Config

> [!info] Thank you sources from
1. https://github.com/quantonganh/dotfiles/blob/main/.local/bin/hx-fzf.sh
2. https://gitlab.com/obxhdx/dotfiles/-/blob/main/config/bin/open_file_explorer?ref_type=heads



## zsh

Layout (stow-managed):

- `~/.zshenv` sets `ZDOTDIR=~/.config/zsh`; `.zprofile` (PATH, exports) and `.zshrc` (interactive) live there.
- Plugins are declared in `~/.config/sheldon/plugins.toml` and loaded by `sheldon`.
- Helper commands live in `.local/bin` and are linked by stow.

Installers like to append lines to `~/.zshrc` or `~/.zprofile`. When the startup warning `stray ... exists` fires:

1. `ls -la ~/.zshrc ~/.zprofile` (a real file, not a stow symlink, is the stray)
2. Read it and see what the installer added.
3. Move `PATH`/`export` lines into `$ZDOTDIR/.zprofile`, and `eval`/`source`/`alias` lines into `$ZDOTDIR/.zshrc`.
4. Delete the home file.
5. `exec zsh`, then test the tool that added the lines.
6. Commit the change.

Maintenance:

- Update plugins: `sheldon lock --update`.
- Force-refresh the cached init scripts (starship, atuin, zoxide, carapace, sheldon): `rm -rf ~/.cache/zsh-init`. They also refresh by themselves when `.zshrc` changes or after 24 hours.
- Back to fish: set `config.default_prog` in `.config/wezterm/wezterm.lua` to the fish line (currently `{ "/bin/zsh", "-l" }`).
