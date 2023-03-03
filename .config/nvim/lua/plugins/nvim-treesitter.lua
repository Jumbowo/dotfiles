return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {},
    sync_install = false,
    auto_install = true,

    highlight = {
      enable = true,
      disable = { },
    },

    -- Rainbow pairs
    rainbow = {
      enable = true,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
