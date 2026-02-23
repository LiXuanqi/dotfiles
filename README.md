# Dotfiles

## WezTerm setup on a new laptop

1. Clone this repo:

```bash
git clone <your-repo-url> /Users/lixuanqi/dev/dotfiles
cd /Users/lixuanqi/dev/dotfiles
```

2. Ensure config directory exists:

```bash
mkdir -p /Users/lixuanqi/.config
```

3. Symlink WezTerm config folder:

```bash
ln -sfn /Users/lixuanqi/dev/dotfiles/wezterm /Users/lixuanqi/.config/wezterm
```

4. Verify the symlink:

```bash
ls -la /Users/lixuanqi/.config/wezterm
```

Optional: if WezTerm expects `~/.wezterm.lua` on your setup:

```bash
ln -sfn /Users/lixuanqi/dev/dotfiles/wezterm/wezterm.lua /Users/lixuanqi/.wezterm.lua
```
