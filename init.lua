-- Lazy.nvim
require('config.lazy')

-- Tabs
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.smartindent = true

-- Configuration
vim.o.number = true
vim.o.relativenumber = true
vim.o.linebreak = true

-- Text wrapping
vim.opt.wrap = true
vim.opt.breakindent = true

vim.o.winborder = 'rounded'
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Keymaps
vim.g.mapleader = ' '
vim.keymap.set('v', '<leader>y', '"+y<CR>')

-- Colorscheme
vim.cmd.colorscheme('nightfox')

-- Spell 
vim.opt.spelllang = en_us;

-- Autocompleteopt
vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
