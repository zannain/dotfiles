return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"mfussenegger/nvim-dap-python",
			"nvim-neotest/nvim-nio",
			{
				"theHamsta/nvim-dap-virtual-text",
				opts = {},
			},
		},
		  -- stylua: ignore
		keys = {
			{ "<leader>d", "", desc = "+debug", mode = {"n", "v"} },
			{ "<F5>", function() require("dap").continue() end, desc = "Debug: Start/Continue" },
			{ "<F6>", function() require("dap").terminate() end, desc = "Debug: Terminate" },
			{ "<F1>", function() require("dap").step_into() end, desc = "Debug: Step Into" },
			{ "<F2>", function() require("dap").step_over() end, desc = "Debug: Step Over" },
			{ "<F3>", function() require("dap").step_out() end, desc = "Debug: Step Out" },
			{ "<F12>", function() require("dapui").toggle() end, desc = "Debug: View DAP UI" },
			{ "<leader>b", function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
			{ "<leader>B", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Debug: Set Breakpoint" },
			{ "<leader>da", function() require("dap").continue({ before = get_args }) end, desc = "Run with Args" },
			{ "<leader>dC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
			{ "<leader>dg", function() require("dap").goto_() end, desc = "Go to Line (No Execute)" },
			{ "<leader>dj", function() require("dap").down() end, desc = "Down" },
			{ "<leader>dk", function() require("dap").up() end, desc = "Up" },
			{ "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
			{ "<leader>dp", function() require("dap").pause() end, desc = "Pause" },
			{ "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
			{ "<leader>ds", function() require("dap").session() end, desc = "Session" },
			{ "<leader>dw", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },
		},
		config = function()
			local dap = require("dap")
			local ui = require("dapui")
			require("dap-python").setup()
			require("dapui").setup()
			dap.listeners.before.attach.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				ui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				ui.close()
			end
		end,
	},
}
