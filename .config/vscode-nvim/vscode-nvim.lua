local map = vim.api.nvim_set_keymap
local snr = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Stay in visual mode when indenting
map("v", "<", "<gv", snr)
map("v", ">", ">gv", snr)

local function notify(cmd)
  return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

-- VSCode Actions
map ("n", "<leader>f", notify "workbench.action.quickOpen", snr)
