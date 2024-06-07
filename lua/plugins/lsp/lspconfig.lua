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
 end,
}
