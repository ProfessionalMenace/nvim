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
            checkOnSave = {
            command = "clippy",
              extraArgs = {"--workspace"},
            },
            diagnostics = {
                enable = true,
            },
            procMacro = {
              enable = true,
            },
          },
        }
      })
     end,
  }
}
