return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      -- transparent = true,
      -- styles = {
      -- sidebars = "transparent",
      -- floats = "transparent",
      -- },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
