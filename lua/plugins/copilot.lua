return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	build = ":Copilot auth",
	opts = {
		suggestion = {
			auto_trigger = false,
			keymap = {
				accept = "<M-Tab>",
				prev = "<M-[>",
				next = "<M-]>",
				dismiss = "<C-Tab>",
			},
		},

		panel = {
			auto_refresh = false,
			keymap = {
				accept = "<CR>",
				jump_prev = "[[",
				jump_next = "]]",
				refresh = "gr",
				open = "<M-CR>",
			},
		},
		filetypes = {
			markdown = true,
			help = true,
		},
	},
}
