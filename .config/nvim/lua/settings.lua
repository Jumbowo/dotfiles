-- General settings
vim.o.autoindent = true

vim.opt.mouse = 'a'
vim.opt.ruler = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.copyindent = true
vim.opt.smarttab = true
vim.opt.cindent = true
vim.opt.scrolloff = 4

vim.opt.signcolumn = 'yes'

vim.opt.termguicolors = true

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.pumheight = 12

vim.opt.fillchars:append { eob = " " }

require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  no_italic = true,
})

vim.cmd.colorscheme "catppuccin"

-- Menu transparency
vim.cmd([[
  highlight! link NormalFloat Normal
  highlight! link PMenu Normal
]])
