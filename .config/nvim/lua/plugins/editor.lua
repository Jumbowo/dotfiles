return {
  -- Auto closing brackets
  {
    "echasnovski/mini.pairs",
    config = function(_, opts)
      require("mini.pairs").setup(opts)
    end,
  },
}
