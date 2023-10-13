return {
  {
    -- LSP config with lsp-zero
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim', -- Optional

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local lsp = require("lsp-zero").preset({
        name = "minimal",
        set_lsp_keymaps = true,
        manage_nvim_cmp = true,
        suggest_lsp_servers = false,
      })

      require('lspconfig').clangd.setup({
        cmd = {
          "clangd",
          "--header-insertion=never"
        }
      })

      lsp.nvim_workspace()
      lsp.setup()

      -- Nvim cmp
      local cmp = require('cmp')

      local ELLIPSIS_CHAR = '…'
      local MAX_LABEL_WIDTH = 25
      local MIN_LABEL_WIDTH = 25

      -- Set min and max menu width in cmp
      cmp.setup({
        formatting = {
          format = function(entry, vim_item)
            local label = vim_item.abbr
            local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
            if truncated_label ~= label then
              vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
            elseif string.len(label) < MIN_LABEL_WIDTH then
              local padding = string.rep(' ', MIN_LABEL_WIDTH - string.len(label))
              vim_item.abbr = label .. padding
            end
            return vim_item
          end,
        },
      })

      -- Override defualt vim.diagnostic.config
      vim.diagnostic.config({
        virtual_text = true,
      })
    end
  },

  -- LSP enhancements with lspsaga
  {
    'glepnir/lspsaga.nvim',
    config = function()
      require("lspsaga").setup({
        border_style = "solid",
        -- Breadcrumbs
        symbol_in_winbar = {
          enable = true,
        }
      })
    end,
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
    }
  }
}
