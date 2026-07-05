return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}

      -- Disable all linters for Markdown
      opts.linters_by_ft.markdown = {}
    end,
  },
}
