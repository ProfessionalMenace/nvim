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

-- TMP
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
      vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      vim.keymap.set('i', '<C-Space>', function()
        vim.lsp.completion.get()
      end)
    end
  end,
})

-- Diagnostics
vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  },
})
