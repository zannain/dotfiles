require("lazy").setup({
	"tpope/vim-sleuth",
	{ "numToStr/Comment.nvim", opts = {} },
	"ThePrimeagen/vim-be-good",
	{ import = "z.plugins.coding" },
	{ import = "z.plugins.colorscheme" },
	{ import = "z.plugins.dap" },
	{ import = "z.plugins.editor" },
	{ import = "z.plugins.formatting" },
	{ import = "z.plugins.linting" },
	{ import = "z.plugins.lsp" },
	{ import = "z.plugins.treesitter" },
	{ import = "z.plugins.ui" },
	{ import = "z.plugins.util" },
})
