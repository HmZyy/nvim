# VibeVim 🔥
A NeoVim config based on [LazyVim](https://github.com/LazyVim/LazyVim)

## ✨ Features

- 🔥 Transform your Neovim into a full-fledged IDE
- 💤 Easily customize and extend your config with [lazy.nvim](https://github.com/folke/lazy.nvim)
- 🚀 Blazingly fast
- 🧹 Sane default settings for options, autocmds, and keymaps
- 📦 Comes with a wealth of plugins pre-configured and ready to use

## ⚡️ Requirements

- Neovim >= **0.8.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/) **_(optional)_**
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) **_(optional)_**
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and _undercurl_:
  - [kitty](https://github.com/kovidgoyal/kitty) **_(Linux & Macos)_**
  - [wezterm](https://github.com/wez/wezterm) **_(Linux, Macos & Windows)_**
  - [alacritty](https://github.com/alacritty/alacritty) **_(Linux, Macos & Windows)_**
  - [iterm2](https://iterm2.com/) **_(Macos)_**

## Installation
- Make a backup of your current Neovim files:
  ```sh
  # required
  mv ~/.config/nvim ~/.config/nvim.bak

  # optional but recommended
  mv ~/.local/share/nvim ~/.local/share/nvim.bak
  mv ~/.local/state/nvim ~/.local/state/nvim.bak
  mv ~/.cache/nvim ~/.cache/nvim.bak
  ```

- Clone the repo
  ```sh
  git clone https://github.com/HmZyy/VibeVim ~/.config/nvim
  ```

## Plugins Configuration

### Markdown-Preview
TODO: add this in plugin setup lua/plugins/markdown-preview.lua
```sh 
cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app
npm install
```

