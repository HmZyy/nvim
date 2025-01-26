return {
  -- override nvim-cmp and add custom sources
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      local custom_sources = {
        { name = "emoji" },
        { name = "cmp_tabnine" },
      }
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, custom_sources))
    end,
  },
}
