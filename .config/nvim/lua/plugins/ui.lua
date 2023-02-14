return {
  -- Bufferline
  {
    "akinsho/bufferline.nvim",
      opts = { }
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
      opts = { }
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
