-- Lazy.nvim
require('config.lazy')
-- Tabs
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.smartindent = true

-- Configuration
vim.o.number = true
vim.o.relativenumber = true
vim.o.linebreak = true
vim.g.mapleader = ' '
vim.o.winborder = 'rounded'

-- Colorscheme
vim.cmd.colorscheme('nightfox')
