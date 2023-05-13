-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Switch to normal mode with JK
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- override find files
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><space>", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-_>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

-- grep word under the cursor
vim.keymap.set("n", "ge", "<cmd>Telescope grep_string<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "ge", "<cmd>Telescope grep_string<CR>", { noremap = true, silent = true })

-- Floating terminal
vim.keymap.set("n", "<c-\\>", "<cmd>FloatermToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<s-Up>", "<cmd>FloatermNew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<s-Right>", "<cmd>FloatermNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<s-Left>", "<cmd>FloatermPrev<CR>", { noremap = true, silent = true })
