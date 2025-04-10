local lspzero = require('plugins.lsp.lspzero')

return {
    lspzero,
    require('plugins.lsp.conform'),
    require('plugins.lsp.lspconfig'),
    {
        'JoosepAlviste/nvim-ts-context-commentstring',
        opts = {
            enable_autocmd = false,
        }

    },
    require('plugins.lsp.treesitter'),
    { 'williamboman/mason.nvim', opts = {} },                    -- opts required to ensure setup
    {
        'williamboman/mason-lspconfig.nvim',
        opts = {
            ensure_installed = { 'rust_analyzer', 'zls', 'clangd', 'pyright' },
            handlers = {
                lspzero.default_setup,

            },
            server_options
        }
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
}
