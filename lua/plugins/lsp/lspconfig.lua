return {
    'neovim/nvim-lspconfig',
    init = function()
        require('lsp-zero').extend_lspconfig()
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { 'vim' },
                    },
                },
            },
        }

        lspconfig.clangd.setup {
            cmd = { 'clangd', '--background-index' },
            filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
            root_dir = lspconfig.util.root_pattern('compile_commands.json', 'compile_flags.txt', '.git'),
        }

        lspconfig.tsserver.setup {
            filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
        }
    end,
}
