return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300

        local wk = require("which-key")
        vim.keymap.set('ca', 'wk', 'WhichKey')

        local harpoon = require("harpoon")
        wk.add(
            {
                { "<leader>h", group = "harpoon" },
                { "<leader>h1", function () harpoon:list():select(1) end, desc = "Buffer 1" },
                { "<leader>h2", function () harpoon:list():select(2) end, desc = "Buffer 2" },
                { "<leader>h3", function () harpoon:list():select(3) end, desc = "Buffer 3" },
                { "<leader>h4", function () harpoon:list():select(4) end, desc = "Buffer 4" },
                { "<leader>h<C-S-N>", function() harpoon:list():prev() end, desc = "Next Buffer" },
                { "<leader>h<C-S-P>", function() harpoon:list():next() end, desc = "Previous Buffer" },
                { "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Show Harpoon List" },

                { "<leader>a", desc = "Harpoon | Append current file" },
            }
        )

    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
}
