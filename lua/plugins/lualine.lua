return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            theme = "iceberg_dark"
        },
        sections = {
            lualine_x = { 'filename', 'encoding', 'fileformat', 'filetype' },
            lualine_c = {
                function()
                    return require('lsp-progress').progress()
                end,
            },
        }
    }
}
