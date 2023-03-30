local map = vim.api.nvim_set_keymap
local snr = { noremap = true, silent = true }

vim.g.mapleader = " "

local function notify(cmd)
  return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

map ("n", "<leader>f", notify "workbench.action.quickOpen", snr)
