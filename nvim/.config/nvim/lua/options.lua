-- Global
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
-- Tabs and Spaces
vim.opt.expandtab = true
vim.opt.tabstop = 2 -- Spaces per tab
vim.opt.shiftwidth = 2 -- Spaces per indent
vim.opt.numberwidth = 2
vim.opt.virtualedit = "block"
-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"
vim.opt.incsearch = true
vim.opt.signcolumn = "auto"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
-- vim.opt.list = true
-- vim.opt.listchars = { tab = " ", trail = "·", nbsp = "␣" }
vim.opt.cursorline = true
vim.opt.scrolloff = 999
vim.opt.hlsearch = true
vim.opt.termguicolors = true
-- Remove Healthcheck errors
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
