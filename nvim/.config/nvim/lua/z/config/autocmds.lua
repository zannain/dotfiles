vim.api.nvim_create_augroup("custom", { clear = true })

-- start terminal in Insert mode
vim.api.nvim_create_autocmd("TermOpen", {
	group = "custom",
	pattern = "*",
	command = "startinsert | set winfixheight",
})

-- highlight yanks
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = "custom",
	callback = function()
		vim.highlight.on_yank()
	end,
})
