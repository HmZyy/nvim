-- if true then
--   return {}
-- end

return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = {
    bottom = {
      -- toggleterm / lazyterm at the bottom with a height of 40% of the screen
      { ft = "toggleterm", size = { height = 0.4 } },
      {
        ft = "log",
        title = "Log 🔍",
        size = { height = 0.3 },
      },
      {
        ft = "lazyterm",
        title = "LazyTerm",
        size = { height = 0.4 },
        filter = function(buf)
          return not vim.b[buf].lazyterm_cmd
        end,
      },
      "Trouble",
      { ft = "qf", title = "QuickFix" },
      { ft = "help", size = { height = 20 } },
      { ft = "spectre_panel", title = "Spectre 🔥", size = { height = 0.4 } },
    },
    left = {
      -- Neo-tree filesystem always takes half the screen height
      {
        title = "Neo-Tree",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "filesystem"
        end,
        size = { height = 0.5 },
      },
      {
        title = "Neo-Tree Git",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "git_status"
        end,
        pinned = true,
        open = "Neotree position=right git_status",
      },
      {
        title = "Neo-Tree Buffers",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "buffers"
        end,
        pinned = true,
        open = "Neotree position=top buffers",
      },
      {
        ft = "Outline",
        pinned = true,
        open = "SymbolsOutline",
      },
      -- any other neo-tree windows
      "neo-tree",
    },
  },
}
