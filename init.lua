-- Lazy.nvim
require("config.lazy")
-- Tabs
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.number = true
vim.o.linebreak = true
-- Colorscheme
vim.cmd.colorscheme("nightfox")
-- LSP
lspconfig = require("lspconfig")

lspconfig.clangd.setup{
    cmd = {"clangd", "--clang-tidy"},
    init_options = {
        fallbackFlags = { '-std=c++23' },
    },
}
lspconfig.rust_analyzer.setup{}

