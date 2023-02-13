-- Leader
local map = vim.api.nvim_set_keymap 
local silent = { silent = true, noremap = true } map("", "<Space>", "<Nop>", silent) 
vim.g.mapleader = " " 
