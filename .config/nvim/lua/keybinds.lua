local map = vim.api.nvim_set_keymap 

-- Leader
local silent = { silent = true, noremap = true } map("", "<Space>", "<Nop>", silent) 
vim.g.mapleader = " " 

-- Window navigation with Ctrl + hjkl
map("n", "<C-h>", "<C-w>h", {noremap = true, silent = false})
map("n", "<C-l>", "<C-w>l", {noremap = true, silent = false})
map("n", "<C-j>", "<C-w>j", {noremap = true, silent = false})
map("n", "<C-k>", "<C-w>k", {noremap = true, silent = false})

-- Stay in visual mode when indenting
map("v", "<", "<gv", {noremap = true, silent = true})
map("v", ">", ">gv", {noremap = true, silent = true})

-- Tab buffer cycling
map("n", "<TAB>", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})

-- LSP
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", {noremap = true, silent = true})
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
map("n", "gD", "<cmd>Lspsaga peek_definition<CR>", {noremap = true, silent = true})
map("n", "gr", "<cmd>Lspsaga rename<CR>", {noremap = true, silent = true})
