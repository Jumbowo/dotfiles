return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {},
    sync_install = false,
    auto_install = true,

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      disable = { },
    },

    indent = {
      enable = true,
      -- disable = { "python", "rust" },
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
