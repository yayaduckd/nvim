return {
    { 'm4xshen/autoclose.nvim' },
    {
        'linrongbin16/lsp-progress.nvim',
        config = function()
            require('lsp-progress').setup()
        end
    },
    { 'wakatime/vim-wakatime', lazy = false }
}
