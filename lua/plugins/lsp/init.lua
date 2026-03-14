local lspzero = require("plugins.lsp.lspzero")
return {
    lspzero,
    require("plugins.lsp.conform"),
    {
        "JoosepAlviste/nvim-ts-context-commentstring",
        opts = { enable_autocmd = false },
    },
    require("plugins.lsp.treesitter"),
    { "williamboman/mason.nvim", opts = {} },

    -- Group completion tools together so they load as a unit

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "hrsh7th/nvim-cmp" },
        opts = {
            ensure_installed = { "rust_analyzer", "zls", "clangd", "pyright" },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        -- capabilities = require("cmp_nvim_lsp").default_capabilities(),
                    })
                end,
            },
        },
    },
    -- Ensure your manual lspconfig runs last, after Mason and cmp are ready
    require("plugins.lsp.lspconfig"),
}
