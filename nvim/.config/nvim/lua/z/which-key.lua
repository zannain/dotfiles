return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		plugins = { spelling = true },
		defaults = {
			mode = { "n", "v" },
			{ "<leader><tab>", group = "tabs" },
			{ "<leader>b", group = "buffer" },
			{ "<leader>s", group = "search" },
			{ "<leader>w", group = "windows" },

			-- ["g"] = { name = "+goto" },
			-- ["gs"] = { name = "+surround" },
			-- ["z"] = { name = "+fold" },
			-- ["]"] = { name = "+next" },
			-- ["["] = { name = "+prev" },
			-- ["<leader>c"] = { name = "+code" },
			-- ["<leader>f"] = { name = "+file/find" },
			-- ["<leader>g"] = { name = "+git" },
			-- ["<leader>gh"] = { name = "+hunks", ["_"] = "which_key_ignore" },
			-- ["<leader>q"] = { name = "+quit/session" },
			-- ["<leader>u"] = { name = "+ui" },
			-- ["<leader>x"] = { name = "+diagnostics/quickfix" },
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.add(opts.defaults)
	end,
}
