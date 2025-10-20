return {
	"neovim/nvim-lspconfig",
	init = function()
		require("lsp-zero").extend_lspconfig()
		-- local lspconfig = require("lspconfig")
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
			cmd = { "clangd", "--background-index" },
			filetypes = { "c", "cpp", "objc", "objcpp" },
			-- root_dir = lspconfig.util.root_pattern('compile_commands.json', 'compile_flags.txt', '.git'),
		})

		vim.lsp.config("pyright", {
			filetypes = { "python" },
		})

		vim.lsp.config("zls", {
			filetypes = { "zig" },
		})
	end,
}
