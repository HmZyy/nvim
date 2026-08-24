return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- colorscheme is controlled by lua/plugins/theme.lua (symlinked to Omarchy's
  -- current system theme) plus lua/plugins/all-themes.lua and
  -- omarchy-theme-hotreload.lua for live switching
}
