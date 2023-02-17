return {
  -- Bufferline
  {
    "akinsho/bufferline.nvim",
      config = function()
        require("bufferline").setup {
          options = {

          },
        }
      end
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
      config = function()
        require("lualine").setup {
          options = {
            globalstatus = true,
          }
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
    }
}
