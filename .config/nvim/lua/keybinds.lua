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
map("v", "K", "<cmd>Lspsaga hover_doc<CR>", snr)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", snr)
map("n", "gD", "<cmd>Lspsaga peek_definition<CR>", snr)
map("n", "ga", "<cmd>Lspsaga code_action<CR>", snr)
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", snr)
map("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>", snr)
map("n", "gr", "<cmd>Lspsaga rename<CR>", snr)
map("n", "gR", "<cmd>Lspsaga rename ++project<CR>", snr)
map("n", "<leader>s", "<cmd>Lspsaga diagnostic_jump_prev<CR>", snr)
map("n", "<leader>d", "<cmd>Lspsaga diagnostic_jump_next<CR>", snr)
map("n", "<leader>o", "<cmd>AerialToggle!<CR>", snr)

-- Telescope
map("n", "<leader>f", "<cmd>Telescope find_files<CR>", snr)
map("n", "<leader>r", "<cmd>Telescope live_grep<CR>", snr)
map("n", "<leader>b", "<cmd>Telescope buffers<CR>", snr)

map("n", "<leader>i", "<cmd>Inspect<CR>", snr)

-- Remap lowercase marks to uppercase
local alphabet = "abcdefghijklmnopqrstuvwxyz"
for i = 1, 26, 1 do
  map(
    "n",
    string.format("m%s", string.sub(alphabet, i, i)),
    string.format("m%s", string.upper(string.sub(alphabet, i, i))),
    snr
  )
  map(
    "n",
    string.format("'%s", string.sub(alphabet, i, i)),
    string.format("'%s", string.upper(string.sub(alphabet, i, i))),
    snr
  )
  map(
    "n",
    string.format("`%s", string.sub(alphabet, i, i)),
    string.format("`%s", string.upper(string.sub(alphabet, i, i))),
    snr
  )
end


