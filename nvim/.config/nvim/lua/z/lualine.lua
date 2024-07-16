return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"folke/noice.nvim",
	},
	config = function()
		local noice = require("noice")
		require("lualine").setup({
			sections = {
				lualine_x = {
					{
						noice.api.status.message.get_hl,
						cond = require("noice").api.status.message.has,
					},
					{
						noice.api.status.command.get,
						cond = require("noice").api.status.command.has,
						color = { fg = "#ff9e64" },
					},
					{
						noice.api.status.mode.get,
						cond = require("noice").api.status.mode.has,
						color = { fg = "#ff9e64" },
					},
					{
						noice.api.status.search.get,
						cond = require("noice").api.status.search.has,
						color = { fg = "#ff9e64" },
					},
				},
			},
		})
	end,
}
