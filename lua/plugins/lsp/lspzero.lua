return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    init = function()
        local lsp_zero = require('lsp-zero')
        lsp_zero.extend_lspconfig()
        lsp_zero.on_attach(function(client, buffer)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({ buffer = buffer })

            vim.api.nvim_clear_autocmds({ group = augroup, buffer = buffer })
        end)
        -- LSP ZERO EXTRA KEYBINDS
        local cmp = require('cmp')
        local cmp_action = lsp_zero.cmp_action()
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                -- `Enter` key to confirm completion
                ['<CR>'] = cmp.mapping.confirm({ select = false }),

                -- Ctrl+Space to trigger completion menu
                ['<C-Space>'] = cmp.mapping.complete(),

                -- Navigate between snippet placeholder
                ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                ['<C-b>'] = cmp_action.luasnip_jump_backward(),

                -- Scroll up and down in the completion documentation
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
            })
        })
    end,
}
