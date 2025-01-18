return {
    {'mfussenegger/nvim-jdtls'}, -- Java language server
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}, -- Treesitter for syntax highlighting
    {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}, -- Telescope for fuzzy finding
}
