return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                transparent_background = true,
            })
            vim.cmd.colorscheme "catppuccin"
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup()
        end,
    },
    {
        "whleucka/melody.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        },
        event = "BufReadPre",
        keys = {
            { "<leader>mm", "<cmd>lua require('melody').music_search()<cr>)", desc = "Melody search" },
        },
        opts = {
            music_dir = "/Users/aleksandrivanov/Music/",
        }
    },
}
