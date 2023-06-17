-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

-- Switch to normal mode with JK
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- override find files
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<leader><space>",
  "<cmd>Telescope buffers<CR>",
  { noremap = true, silent = true, desc = "Buffers" }
)
vim.keymap.set("n", "<C-_>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

-- override <leader>bb : originally switch to the next buffer
vim.keymap.set("n", "<leader>bb", function()
  require("mini.bufremove").delete(0, false)
end, { noremap = true, silent = true, desc = "Delete buffer" })

vim.keymap.set("n", "<leader>bB", function()
  require("mini.bufremove").delete(0, true)
end, { noremap = true, silent = true, desc = "Delete buffer (force)" })

-- grep word under the cursor
vim.keymap.set("n", "ge", "<cmd>Telescope grep_string<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "ge", "<cmd>Telescope grep_string<CR>", { noremap = true, silent = true })

-- delete window
vim.keymap.set("n", "<leader>ww", "<C-W>c", { desc = "Delete Window" })

-- Switch between header/source files (c++)
vim.keymap.set(
  "n",
  "<leader>h",
  "<cmd>ClangdSwitchSourceHeader<CR>",
  { noremap = true, silent = true, desc = "Switch Source/Header" }
)

-- mini map
-- vim.keymap.set("n", "<leader>mc", MiniMap.close, { noremap = true, silent = true, desc = "Close map" })
-- vim.keymap.set("n", "<leader>mf", MiniMap.toggle_focus, { noremap = true, silent = true, desc = "Toggle focus map" })
-- vim.keymap.set("n", "<leader>mo", MiniMap.open, { noremap = true, silent = true, desc = "Open map" })
-- vim.keymap.set("n", "<leader>mr", MiniMap.refresh, { noremap = true, silent = true, desc = "Refresh map" })
-- vim.keymap.set("n", "<leader>ms", MiniMap.toggle_side, { noremap = true, silent = true, desc = "Toggle side map" })
-- vim.keymap.set("n", "<leader>mt", MiniMap.toggle, { noremap = true, silent = true, desc = "Toggle Map" })

-- Floating terminal
local lazyterm = function()
  Util.float_term(nil, { cwd = Util.get_root() })
end
vim.keymap.set("n", "<c-\\>", lazyterm, { noremap = true, silent = true })

-- Comments
vim.keymap.set("n", "<c-/>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("n", "<leader>Ll", "<cmd>LeetCodeList<CR>", { noremap = true, silent = true, desc = "LeetCode List" })
vim.keymap.set("n", "<leader>Lt", "<cmd>LeetCodeTest<CR>", { noremap = true, silent = true, desc = "LeetCode Test" })
vim.keymap.set(
  "n",
  "<leader>Ls",
  "<cmd>LeetCodeSubmit<CR>",
  { noremap = true, silent = true, desc = "LeetCode Submit" }
)
vim.keymap.set(
  "n",
  "<leader>Li",
  "<cmd>LeetCodeSignIn<CR>",
  { noremap = true, silent = true, desc = "LeetCode Sign in" }
)

-- Flutter
vim.keymap.set("n", "<leader>F", "<cmd>Telescope flutter commands<CR>", { noremap = true, silent = true })

-- LeetCode

-- Remove keymaps
vim.keymap.del("n", "<leader>`") -- <S-H> <S-L>
vim.keymap.del("n", "<leader>bd") -- remapped to <leader>bb
vim.keymap.del("n", "<leader>bD") -- remapped to <leader>BB
vim.keymap.del("n", "<leader>wd") -- remapped to <leader>ww
