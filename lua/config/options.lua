vim.opt.number = true -- show numbers
vim.opt.mouse = "a" -- enable every mouse feature
vim.opt.smartcase = true -- ignore uppercase unless search has uppercase
vim.opt.hlsearch = false -- don't highlight the last search
vim.opt.wrap = false -- disable linewrap
vim.opt.tabstop = 2 -- 1 tab -> 4 spaces
vim.opt.shiftwidth = 2 -- same as tabstop for indentation
vim.opt.expandtab = true -- expand tabs to spaces

vim.wo.relativenumber = true -- set relative linenumbers

vim.g.mapleader = " " -- make the spacebar the leader key

vim.cmd.colorscheme "catppuccin"-- set colorscheme (installed in plugins.lua)
