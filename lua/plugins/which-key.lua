return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300

        local wk = require("which-key")
        vim.keymap.set('ca', 'wk', 'WhichKey')

        local harpoon = require("harpoon")

        wk.register({
            h = {
                name = "harpoon",
                e = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Show Harpoon List" },
                ["1"] = { function() harpoon:list():select(1) end, "Buffer 1" },
                ["2"] = { function() harpoon:list():select(2) end, "Buffer 2" },
                ["3"] = { function() harpoon:list():select(3) end, "Buffer 3" },
                ["4"] = { function() harpoon:list():select(4) end, "Buffer 4" },
                ["<C-S-P>"] = { function() harpoon:list():prev() end, "Previous Buffer" },
                ["<C-S-N>"] = { function() harpoon:list():next() end, "Next Buffer" },
            },
        }, { prefix = "<leader>" })

        wk.register({
            a = {
                "Harpoon | Append current file",
            },
        }, { prefix = "<leader>" })
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
}
