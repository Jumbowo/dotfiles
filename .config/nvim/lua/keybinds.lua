local map = vim.api.nvim_set_keymap

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
map("n", "ga", "<cmd>Lspsaga code_action<CR>", {noremap = true, silent = true})
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", {noremap = true, silent = true})
map("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>", {noremap = true, silent = true})
map("n", "gr", "<cmd>Lspsaga rename<CR>", {noremap = true, silent = true})
map("n", "gR", "<cmd>Lspsaga rename ++project<CR>", {noremap = true, silent = true})
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", {noremap = true, silent = true})
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", {noremap = true, silent = true})

-- Telescope
map("n", "<leader>f", "<cmd>Telescope find_files<CR>", {noremap = true, silent = true})
map("n", "<leader>r", "<cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
