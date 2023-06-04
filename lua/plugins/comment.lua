return {
  {
    "echasnovski/mini.comment",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    keys = {
      "gcc",
      "gc",
      { "<c-/>", "gcc", mode = "n", remap = true },
      { "<c-/>", "gc", mode = "v", remap = true },
    },
    opts = function(_, opts)
      return vim.tbl_deep_extend("force", opts, {
        options = {
          ignore_blank_line = true,
        },
      })
    end,
  },
}
