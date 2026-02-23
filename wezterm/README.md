# WezTerm Starter Config

This folder contains a starter config at `wezterm.lua`.

## How to use

1. Symlink this file to your WezTerm config location:
   - macOS/Linux: `~/.wezterm.lua`
2. Restart WezTerm.

## Suggested tweaks

- Theme:
  - Try `Tokyo Night`, `Gruvbox Dark`, or `Catppuccin Latte` if you prefer lighter contrast.
- Font:
  - Replace with `Berkeley Mono`, `Iosevka`, or `FiraCode Nerd Font` if installed.
- Leader key:
  - If `Ctrl+a` conflicts with tmux, switch `config.leader` to `Ctrl+Space`.
- Multiplexing:
  - Add workspace switching (`wezterm.mux`) if you often juggle projects.
- SSH domains:
  - Define SSH targets in config for one-key remote sessions.
- Launch menu:
  - Add quick entries for common shells and project directories.
