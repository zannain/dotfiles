return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = function()
		local logo = [[
███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
		]]
		logo = string.rep("\n", 8) .. logo .. "\n\n"
		local opts = {
			theme = "doom",
			config = {
				header = vim.split(logo, "\n"),
				center = {
					{
						icon = "  ",
						desc = "Find Files",
						action = "Telescope find_files",
						key = "f",
					},
					{
						icon = "  ",
						desc = "Recent Files",
						action = "Telescope oldfiles",
						key = "r",
					},

					{
						icon = "󰒲  ",
						desc = "Lazy",
						action = "Lazy",
						key = "l",
					},
					{
						icon = "  ",
						desc = "Config",
						key = "c",
						action = function()
							vim.cmd("Telescope find_files cwd=" .. vim.fn.stdpath("config"))
						end,
					},
					{
						icon = " ",
						desc = " Restore Session",
						key = "s",
						action = 'lua require("persistence").load()',
					},
					{
						icon = " ",
						desc = " Quit",
						key = "q",
						action = function()
							vim.api.nvim_input("<cmd>qa<cr>")
						end,
					},
				},
			},
		}
		for _, button in ipairs(opts.config.center) do
			button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
			button.key_format = "  %s"
		end
		return opts
	end,
}
