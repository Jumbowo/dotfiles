return {
  {
    -- LSP config with lsp-zero
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim", -- Optional

      -- Autocompletion
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",

      -- Snippets
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
      "saadparwaiz1/cmp_luasnip",
    },

    config = function()
      local lsp = require("lsp-zero").preset({
        name = "minimal",
        set_lsp_keymaps = true,
        manage_nvim_cmp = true,
        suggest_lsp_servers = false,
      })

      -- Setup mason before lspconfig
      require("mason").setup()
      require("mason-lspconfig").setup({
        handlers = {
          require("lsp-zero").default_setup,
        }
      })

      -- Lsp specific setup
      local lspconfig = require("lspconfig")

      lspconfig.emmet_language_server.setup({})

      -- lspconfig.clangd.setup({
      --     cmd = {
      --         "clangd",
      --         "--header-insertion=never"
      --     }
      -- })

      lsp.nvim_workspace()
      lsp.setup()

      -- Nvim cmp
      local cmp = require("cmp")

      local ELLIPSIS_CHAR = "…"
      local MAX_LABEL_WIDTH = 30
      local MIN_LABEL_WIDTH = 30

      cmp.setup({
        mapping = {
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
          ['<Tab>'] = vim.NIL,
          ['<S-Tab>'] = vim.NIL,
        },
        -- Set min and max menu width in cmp
        formatting = {
          format = function(_, vim_item)
            local label = vim_item.abbr
            local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
            if truncated_label ~= label then
              vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
            elseif string.len(label) < MIN_LABEL_WIDTH then
              local padding = string.rep(" ", MIN_LABEL_WIDTH - string.len(label))
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
    "glepnir/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({
        border_style = "solid",
        -- Breadcrumbs
        symbol_in_winbar = {
          enable = true,
        },
        lightbulb = {
          enable = false,
          enable_in_insert = false,
          sign = true,
        }
      })
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    }
  }
}
