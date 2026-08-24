-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
require("config.remote_clipboard").setup()

local opt = vim.opt
opt.wrap = true
opt.laststatus = 3
opt.splitkeep = "screen"
opt.relativenumber = false
vim.g.autoformat = false
