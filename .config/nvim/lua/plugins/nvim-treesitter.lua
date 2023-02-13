return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require'nvim-treesitter.configs'.setup({

      ensure_installed = {},    
      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,
        disable = { },
      }
    })

  end,
  build = ":TSUpdate"
}
