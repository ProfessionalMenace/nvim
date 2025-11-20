require('config.lazy')
require('config.options')
require('config.lsp')

-- Keymaps
vim.g.mapleader = ' '
vim.keymap.set('v', '<leader>y', '"+y<CR>')

-- Colorscheme
vim.cmd.colorscheme('nightfox')

-- Spell 
vim.opt.spelllang = en_us;

-- Autocompleteopt
vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }

-- Diagnostics
vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  },
})
