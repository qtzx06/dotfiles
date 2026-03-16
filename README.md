# dotfiles

my personal dotfiles, organized by system.

## structure

```
dotfiles/
├── endeavoros/        # endeavoros + hyprland (caelestia)
│   ├── .config/
│   │   ├── caelestia/
│   │   ├── fastfetch/
│   │   ├── hypr/
│   │   └── kitty/
│   └── .zshrc
├── macos/             # macos shared configs
│   └── fastfetch/
├── machine/           # macos "machine" setup
│   ├── aerospace/
│   ├── bin/
│   ├── ghostty/
│   ├── karabiner/
│   ├── .zshrc
│   ├── .tmux.conf
│   └── .p10k.zsh
```

## endeavoros

hyprland desktop with [caelestia](https://github.com/Caelestia-OS) theming.

**includes:**
- hyprland config (keybinds, animations, decorations, rules, etc.)
- caelestia theme integration
- fastfetch config
- kitty terminal config
- zsh with powerlevel10k + pywal colors

## machine (macos)

tiling wm setup on macos using aerospace, ghostty, and karabiner.

**includes:**
- aerospace tiling wm config (workspace switching, keybinds, layout cycling)
- ghostty terminal config (splits, theme, quick terminal)
- karabiner config (right option → hyper key)
- helper scripts (new terminal window, layout toggle, screenshot watcher)
- zsh with powerlevel10k, zsh-autocomplete, and zoxide
- tmux config

**dependencies:**
- [aerospace](https://github.com/nikitabobko/AeroSpace)
- [ghostty](https://ghostty.org)
- [karabiner-elements](https://karabiner-elements.pqrs.org)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete) (via homebrew)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [fswatch](https://github.com/emcrisostomo/fswatch) (for screenshot watcher)

### quick start

```bash
# aerospace
cp machine/aerospace/.aerospace.toml ~/.aerospace.toml

# ghostty
cp machine/ghostty/config ~/.config/ghostty/config

# karabiner
cp machine/karabiner/karabiner.json ~/.config/karabiner/karabiner.json

# scripts
cp machine/bin/* ~/bin/
chmod +x ~/bin/*.sh

# shell
cp machine/.zshrc ~/.zshrc
cp machine/.p10k.zsh ~/.p10k.zsh
cp machine/.tmux.conf ~/.tmux.conf
```
