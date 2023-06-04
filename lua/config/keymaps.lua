-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
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

vim.keymap.set("n", "<leader>mc", MiniMap.close, { noremap = true, silent = true, desc = "Close map" })
vim.keymap.set("n", "<leader>mf", MiniMap.toggle_focus, { noremap = true, silent = true, desc = "Toggle focus map" })
vim.keymap.set("n", "<leader>mo", MiniMap.open, { noremap = true, silent = true, desc = "Open map" })
vim.keymap.set("n", "<leader>mr", MiniMap.refresh, { noremap = true, silent = true, desc = "Refresh map" })
vim.keymap.set("n", "<leader>ms", MiniMap.toggle_side, { noremap = true, silent = true, desc = "Toggle side map" })
vim.keymap.set("n", "<leader>mt", MiniMap.toggle, { noremap = true, silent = true, desc = "Toggle Map" })

-- Floating terminal
vim.keymap.set("n", "<c-\\>", "<cmd>FloatermToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<s-Up>", "<cmd>FloatermNew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<s-Right>", "<cmd>FloatermNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<s-Left>", "<cmd>FloatermPrev<CR>", { noremap = true, silent = true })

-- Remove keymaps
vim.keymap.set("n", "<leader>`", "", { desc = "Switch to Other Buffer" }) -- <S-H> <S-L>
vim.keymap.set("n", "<leader>bd", "", { desc = "Delete Buffer" }) -- remapped to <leader>bb
vim.keymap.set("n", "<leader>bD", "", { desc = "Delete Buffer (Force)" }) -- remapped to <leader>BB
vim.keymap.set("n", "<leader>wd", "", { desc = "Delete Window" }) -- remapped to <leader>ww
