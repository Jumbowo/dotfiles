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

    -- Indent blankline
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                char = "│"
            },
            scope = {
                enabled = false
            },
        },
        config = function(_, opts)
            require("ibl").setup(opts)
        end
    },

    -- Rainbow pairs
    {
        "HiPhish/nvim-ts-rainbow2",
    },
}
