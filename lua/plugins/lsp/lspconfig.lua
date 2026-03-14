return {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
        require("lsp-zero").extend_lspconfig()
        -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
        -- require("lspconfig").clangd.setup({ capabilities = capabilities })
        -- Global logic for Zig autofix on save
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.zig",
            callback = function()
                vim.lsp.buf.code_action({
                    context = { only = { "source.fixAll" } },
                    apply = true,
                })
                -- ZLS also benefits from standard formatting
                vim.lsp.buf.format({ async = false })
            end,
        })
        local lspconfig = require("lspconfig")
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { "vim" },
                    },
                },
            },
        })

        vim.lsp.config("clangd", {
            cmd = { "clangd", "--background-index", "--offset-encoding=utf-16" },
            filetypes = { "c", "cpp", "objc", "objcpp" },
            -- root_dir = lspconfig.util.root_pattern('compile_commands.json', 'compile_flags.txt', '.git'),
        })

        vim.lsp.config("pyright", {
            filetypes = { "python" },
        })

        vim.lsp.config("zls", {
            filetypes = { "zig" },
            -- capabilities = capabilities,
        })
    end,
}
