# dotfiles

my personal dotfiles, organized by system.

## structure

```
dotfiles/
├── endeavoros/     # endeavoros + hyprland (caelestia)
│   ├── .config/
│   │   ├── caelestia/
│   │   ├── fastfetch/
│   │   ├── hypr/
│   │   └── kitty/
│   └── .zshrc
├── macos/          # macos setup
│   ├── .config/
│   │   └── kitty/
│   ├── fastfetch/
│   ├── .zshrc
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

## macos

**includes:**
- kitty terminal config + theme
- fastfetch presets and custom ascii art
- zsh with powerlevel10k, zsh-autocomplete, and zoxide
- powerlevel10k prompt config (`.p10k.zsh`)

**dependencies:**
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete) (via homebrew)
- [zoxide](https://github.com/ajeetdsouza/zoxide)

### quick start (macos)

```bash
# kitty
cp -r macos/.config/kitty/ ~/.config/kitty/

# fastfetch presets + ascii
cp -r macos/fastfetch/ ~/.local/share/fastfetch/

# shell
cp macos/.zshrc ~/.zshrc
cp macos/.p10k.zsh ~/.p10k.zsh
```
