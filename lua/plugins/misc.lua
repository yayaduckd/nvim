return {
    { 'm4xshen/autoclose.nvim' },
    {
        'linrongbin16/lsp-progress.nvim',
        config = function()
            require('lsp-progress').setup()
        end
    },
    { 'wakatime/vim-wakatime', lazy = false },
    {
        "declancm/cinnamon.nvim",
        version = "*", -- use latest release
        opts = {
            -- Enable all provided keymaps
            keymaps = {
                basic = true,
                extra = true,
            },
            delay = 2,
            -- Only scroll the window
            options = { mode = "cursor" },
        },
    },
}
