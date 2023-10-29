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
    }
}
