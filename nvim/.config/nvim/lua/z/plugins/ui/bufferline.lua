return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	keys = {
		{"<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin"},
		{"<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc="Delete Non-Pinned Buffers" },
		{"<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc="Delete Other Buffers" },
		{"<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc="Delete Buffers to the Left" },
		{"<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc="Delete Buffers to the Right" },
		{ "]b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
		{ "[b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
		{ "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
		{ "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
		{ "<leader>bd", "<cmd>bdelete<CR>", desc = "Delete current buffer" }
	},
	opts = {
		options = {
			always_show_bufferline = false,
			diagnostics = "nvim_lsp",
			separator_style = "slope"
		}
	},
}
