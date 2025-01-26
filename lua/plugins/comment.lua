return {
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- {
  --   "echasnovski/mini.comment",
  --   dependencies = {
  --     "JoosepAlviste/nvim-ts-context-commentstring",
  --   },
  --   keys = {
  --     "gcc",
  --     "gc",
  --   },
  --   opts = function(_, opts)
  --     return vim.tbl_deep_extend("force", opts, {
  --       options = {
  --         ignore_blank_line = true,
  --       },
  --     })
  --   end,
  -- },
}
