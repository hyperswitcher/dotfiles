return {
    {
        "folke/zen-mode.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    {
        "zk-org/zk-nvim",
        config = function()
            require("zk").setup({
                picker = "telescope",
            })
        end,
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        -- @module 'render-markdown'
        -- @type render.md.UserConfig
        opts = {},
    },
    {
        "jghauser/papis.nvim",
        dependencies = {
            "kkharji/sqlite.lua",
            "MunifTanjim/nui.nvim",
            "pysan3/pathlib.nvim",
            "nvim-neotest/nvim-nio",
            -- if not already installed, you may also want:
            -- "nvim-telescope/telescope.nvim",
            -- "hrsh7th/nvim-cmp",

        },
        config = function()
            require("papis").setup({
                -- Enable the default keymaps (defaults to `false`)
                enable_keymaps = true,
                -- You might want to change the filetypes activating papis.nvim
                -- init_filetypes = { "markdown", "norg", "yaml", "typst" },
                -- If you don't have an appropriate font (like Nerd Font), you
                -- may want to disable icons. This may require a `:Papis reload data`.
                -- to take effect.
                -- enable_icons = false,
            })
        end,
    }
}
