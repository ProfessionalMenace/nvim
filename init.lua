-- Lazy.nvim
require("config.lazy")
-- Tabs
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.wrap = false
-- Colorscheme
vim.cmd.colorscheme("nightfox")
lspconfig = require("lspconfig")
lspconfig.clangd.setup{}
lspconfig.rust_analyzer.setup{}