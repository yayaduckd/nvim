return {
    { 'm4xshen/autoclose.nvim' },
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
        config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = { 'rust', 'javascript' },
                highlight = { enable = true, }
            }
        end

    },
    {
        'linrongbin16/lsp-progress.nvim',
        config = function()
            require('lsp-progress').setup()
        end
    },
    { 'wakatime/vim-wakatime', lazy = false }
}
