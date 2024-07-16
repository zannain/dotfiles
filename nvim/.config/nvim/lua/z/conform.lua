return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
  cmd = { "ConformInfo" },
    keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
	config = function()
		local conform = require("conform")
		conform.setup({
      format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				javascriptreact = { { "prettierd", "prettier" } },
				typescriptreact = { { "prettierd", "prettier" } },
				css = { { "prettierd", "prettier" } },
				scss = { { "prettierd", "prettier" } },
				json = { { "prettierd", "prettier" } },
				graphql = { { "prettierd", "prettier" } },
				html = { "htmlbeautifier" },
				python = { "isort", "black" },
			},
		})
	end,
}
