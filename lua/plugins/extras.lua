-- if true then return {} end
return {
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.json" },
  -- { import = "lazyvim.plugins.extras.ui.mini-starter" }, -- use mini-starter instead of alpha (dashboard)
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  { "nvim-mini/mini.bufremove", version = false },
  { "dstein64/nvim-scrollview" },
}
