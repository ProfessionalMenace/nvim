return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      -- CLANGD
      vim.lsp.enable('clangd')
      vim.lsp.config('clangd', {})
      -- RUST-ANALYZER
      vim.lsp.enable('rust_analyzer')
      vim.lsp.config('rust_analyzer', {
        settings = {
          ['rust-analyzer'] = {
            diagnostics = {
              enable = false;
            }
          }
        }
      })
     end,
  }
}
