# dotenv

My config files. Each folder is symlinked into `~/.config` (run from the repo root, works on Linux and macOS):

```bash
ln -s "$PWD/nvim" ~/.config/nvim
ln -s "$PWD/ghostty" ~/.config/ghostty
```

zsh is linked into `~` instead:

```bash
ln -s "$PWD/zsh/.zshrc" ~/.zshrc
```

Machine-specific shell setup (conda init, installer PATH lines, ...) goes in `~/.zshrc.local`, which is not tracked.

On macOS, Ghostty also reads `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty` and lets it override `~/.config/ghostty`, so keep that file absent.

- `nvim/` — Neovim config, based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) (needs Neovim 0.12+ for `vim.pack`)
- `ghostty/` — Ghostty terminal config (font: GoogleSansCode Nerd Font Mono)
- `zsh/` — plain zsh config, no framework: built-in completion, `[~/path] branch :` prompt
