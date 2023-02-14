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

      lsp.nvim_workspace()
      lsp.setup()

      -- Override defualt vim.diagnostic.config
      vim.diagnostic.config({
        virtual_text = true,
      })
    end
  },

  -- LSP enhancements with lspsaga
  {
    'glepnir/lspsaga.nvim',
    event = "BufRead",
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
