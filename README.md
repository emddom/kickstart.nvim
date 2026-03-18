# emddom's Neovim Configuration

This is my personal Neovim configuration, built on top of the excellent [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) project.

## 🚀 Key Customizations

While maintaining the small, single-file philosophy of Kickstart, I have added the following personalizations:

- **Theme:** [Catppuccin (Macchiato)](https://github.com/catppuccin/nvim) for a beautiful dark mode aesthetic.
- **File Explorer:** [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) mapped to `<leader>n` for quick file navigation.
- **Notes & Knowledge Base:** [Vimwiki](https://github.com/vimwiki/vimwiki) for personal notes, and [Obsidian.nvim](https://github.com/epwalsh/obsidian.nvim) for powerful Obsidian vault editing.
- **Tmux Integration:** [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) for seamless navigation between Neovim splits and tmux panes using `<C-h/j/k/l>`.

## 📦 Installation

To use this configuration on a new machine:

### 1. Requirements
Ensure you have the following installed:
- `neovim` (0.9.0 or newer)
- `git`, `make`, `unzip`, `gcc` (or another C compiler)
- `ripgrep` and `fd-find` (for Telescope search)
- A [Nerd Font](https://www.nerdfonts.com/) (optional, but recommended for icons)
- `tmux` (optional, but required for the vim-tmux-navigator features)

### 2. Backup existing config
If you already have a Neovim config, back it up first:
```sh
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### 3. Clone this repository
```sh
git clone https://github.com/emddom/kickstart.nvim.git ~/.config/nvim
```

### 4. Start Neovim
```sh
nvim
```
Lazy.nvim will automatically download and install all the plugins upon the first launch.

---

*For more details on the base configuration, see the original [kickstart.nvim README](https://github.com/nvim-lua/kickstart.nvim).*