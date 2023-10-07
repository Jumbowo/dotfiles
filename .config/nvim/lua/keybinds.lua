local map = vim.api.nvim_set_keymap
local snr = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Window navigation with Ctrl + hjkl
map("n", "<C-h>", "<C-w>h", {noremap = true, silent = false})
map("n", "<C-l>", "<C-w>l", {noremap = true, silent = false})
map("n", "<C-j>", "<C-w>j", {noremap = true, silent = false})
map("n", "<C-k>", "<C-w>k", {noremap = true, silent = false})

-- Stay in visual mode when indenting
map("v", "<", "<gv", snr)
map("v", ">", ">gv", snr)

-- LSP
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", snr)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", snr)
map("n", "gD", "<cmd>Lspsaga peek_definition<CR>", snr)
map("n", "ga", "<cmd>Lspsaga code_action<CR>", snr)
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", snr)
map("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>", snr)
map("n", "gr", "<cmd>Lspsaga rename<CR>", snr)
map("n", "gR", "<cmd>Lspsaga rename ++project<CR>", snr)
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", snr)
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", snr)

-- Telescope
map("n", "<leader>f", "<cmd>Telescope find_files<CR>", snr)
map("n", "<leader>r", "<cmd>Telescope live_grep<CR>", snr)
map("n", "<leader>b", "<cmd>Telescope buffers<CR>", snr)

-- Bufferline
map("n", "<TAB>", ":BufferLineCycleNext<CR>", snr)
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", snr)
map("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", snr)
map("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", snr)
map("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", snr)
map("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", snr)
map("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", snr)
map("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", snr)
map("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", snr)
map("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", snr)
map("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", snr)
map("n", "<leader>$", "<cmd>BufferLineGoToBuffer -1<CR>", snr)
