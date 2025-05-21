return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-telescope/telescope-bibtex.nvim",
        dependencies = { 'nvim-telescope/telescope.nvim' },
        config = function()
            -- require("telescope").load_extension("bibtex")
        end,
        keys = {
            {
                '<leader>ff', function()
                    require('telescope.builtin').find_files()
                end,
                desc = 'Telescope find files',
            },
            {
                '<leader>fg',
                require('telescope.builtin').live_grep,
                desc = 'Telescope live grep',
            },
            {
                '<leader>fb',
                require('telescope.builtin').buffers,
                desc = 'Telescope buffers',
            },
            {
                '<leader>fh',
                require('telescope.builtin').help_tags,
                desc = 'Telescope help tags',
            },
        }
    },
}
