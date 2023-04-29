return {
  -- Auto closing brackets
  {
    "echasnovski/mini.pairs",
    config = function(_, opts)
      require("mini.pairs").setup(opts)
    end,
  },

  -- Comment
  {
    "echasnovski/mini.comment",
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end,
  },

  -- Rainbow pairs
  {
    "HiPhish/nvim-ts-rainbow2",
  },
}