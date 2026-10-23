# dotenv

My config files. Each folder is symlinked into `~/.config`:

```bash
ln -s ~/Programs/dotenv/nvim ~/.config/nvim
ln -s ~/Programs/dotenv/ghostty ~/.config/ghostty
```

- `nvim/` — Neovim config, based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) (needs Neovim 0.12+ for `vim.pack`)
- `ghostty/` — Ghostty terminal config (font: GoogleSansCode Nerd Font Mono)
