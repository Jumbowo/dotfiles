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

vim.opt.guicursor = "n-v-c-i:block"

vim.opt.signcolumn = 'yes'

vim.opt.termguicolors = true

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.pumheight = 12

vim.opt.ttimeoutlen = 0

vim.opt.fillchars:append { eob = " " }

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  no_italic = true,
  color_overrides = {
    mocha = {
      base = "#000000",
      mantle = "#000000",
      crust = "#000000",
      text = "#EEFFFF",
      peach = "#F78C6C",
      green = "#C3E88D",
      blue = "#82AAFF",
      maroon = "#FF5370",
      sky = "#89DDFF",
      mauve = "#C792EA",
      yellow = "#FFCB6B",
    },
  },
  custom_highlights = function(colors)
    return {
      -- General
      ["@function.builtin"] = { fg = colors.blue },
      ["@keyword.function"] = { fg = colors.sky },
      ["@keyword.operator"] = { fg = colors.mauve },
      Operator = { fg = colors.mauve },
      ["@keyword.return"] = { fg = colors.sky },
      ["@type.builtin"] = { fg = colors.yellow },
      ["@type.qualifier"] = { fg = colors.mauve },
      ["@variable.builtin"] = { fg = colors.text },
      Include = { fg = colors.sky },
      Conditional = { fg = colors.sky },
      Repeat = { fg = colors.sky },
      ["@namespace"] = { fg = colors.yellow },
      ["@field"] = { fg = colors.text },
      ["@property"] = { fg = colors.text },
      Delimiter = { fg = colors.sky },
      ["@variable"] = { fg = colors.text },
      Macro = { fg = colors.blue },
      PreProc = { fg = colors.sky },
      ["@string.escape"] = { fg = colors.sky },
      NonText = { fg = "#2e2e2e" },
      -- TsServer
      ["@tag.tsx"] = { fg = "#F07178" },
      ["@keyword.tsx"] = { fg = colors.sky },
      ["@keyword.function.tsx"] = { fg = colors.mauve },
      ["@type.builtin.tsx"] = { fg = "#B2CCD6" },
      ["@type.builtin.typescript"] = { fg = "#B2CCD6" },
      ["@lsp.type.interface.typescript"] = { fg = colors.yellow },
    }
  end
})

vim.cmd.colorscheme "catppuccin"

vim.cmd([[
  highlight! link NormalFloat Normal
  highlight! link PMenu Normal
]])
