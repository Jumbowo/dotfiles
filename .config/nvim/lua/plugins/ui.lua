return {
  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("bufferline").setup()
    end
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup()
    end
  }
}
