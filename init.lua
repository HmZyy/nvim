-- Append base dir to run time path
local base_dir = vim.env.VV_BASE_DIR
    or (function()
      local init_path = debug.getinfo(1, "S").source
      return init_path:sub(2):match("(.*[/\\])"):sub(1, -2)
    end)()

if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
  vim.opt.rtp:append(base_dir)
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
