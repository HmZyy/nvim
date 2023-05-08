-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Switch to normal mode with JK
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
