return {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
        keys = 'etovxqpdygfblzhckisuran'
    },
    keys = {
        { "<leader>c", "<cmd>HopChar1<cr>", desc = "Hop | Char 1" },
        { "<leader>C", "<cmd>HopChar1<cr>", desc = "Hop | Char 1" },
        { "<leader>l", "<cmd>HopLine<cr>", desc = "Hop | Line" },
        { "<leader>w", "<cmd>HopWord<cr>", desc = "Hop | Word" },
        { "<leader>s", "<cmd>HopPattern<cr>", desc = "Hop | Pattern" },
    }
}
        --[[ { "<leader>ff", "<cmd>Telescope find_files<cr>",            desc = "Telescope | Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",             desc = "Telescope | Grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",               desc = "Telescope | Buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>",             desc = "Telescope | Help Tags" },

        { "gd",         "<cmd>Telescope lsp_definitions<cr>",       desc = "Telescope | LSP Definitions" },
        { "gD",         "<cmd>Telescope lsp_implementations<cr>",   desc = "Telescope | LSP Implementations" },
        { "gr",         "<cmd>Telescope lsp_references<cr>",        desc = "Telescope | LSP References" },
        { "gi",         "<cmd>Telescope lsp_document_symbols<cr>",  desc = "Telescope | LSP Document Symbols" },
        { "gI",         "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "Telescope | LSP Workspace Symbols" }, ]]
