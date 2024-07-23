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
            require "telescope".load_extension("bibtex")
        end,
    },
}
