return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope | Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope | Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope | Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope | Help Tags" },

		{ "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Telescope | LSP Definitions" },
		{ "gD", "<cmd>Telescope lsp_implementations<cr>", desc = "Telescope | LSP Implementations" },
		{ "gr", "<cmd>Telescope lsp_references<cr>", desc = "Telescope | LSP References" },
		{ "gi", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Telescope | LSP Document Symbols" },
		{ "gI", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "Telescope | LSP Workspace Symbols" },
	},
	opts = {
		defaults = {
			file_ignore_patterns = {
				"node_modules",
				"dist",
				"venv",
				"__pycache__",
				"build/",
				"modules/",
			},
		},
	},
}
