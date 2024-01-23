return {
  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup {
        options = {
          globalstatus = true,
          theme = "auto",
        },
      }
    end
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = "Telescope",
    version = false,
    opts = { }
  },

  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    opts = { }
  },

  -- Aerial
  {
    'stevearc/aerial.nvim',
    opts = {
      layout = {
        max_width = 35,
        min_width = 35,
        default_direction = "right",
        placement = "edge",
      },
      attach_mode = "global",
    },
  },

  -- Nvim Tree
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        width = 35,
        signcolumn = "no",
      }
    }
  },
}
