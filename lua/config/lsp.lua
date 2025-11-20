-- Clangd
vim.lsp.enable('clangd')
vim.lsp.config.clangd = {
  cmd = {
    'clangd',
    '--clang-tidy',
    '--background-index',
    '--offset-encoding=utf-8',
  },
  root_markers = { '.clangd', 'compile_commands.json' },
  filetypes = { 'cpp', 'cppm', 'hpp' },
}

-- Nixd
vim.lsp.enable('nixd')
vim.lsp.config.nixd = {
  cmd = { 'nixd' },
  filetypes = { 'nix' },
  root_markers = { 'flake.nix', '.git' },
}

-- Rust Analyzer
vim.lsp.enable('rust_analyzer')
vim.lsp.config.rust_analyzer = {
  cmd = { "rust-analyzer" },
  root_markers = { "Cargo.toml" },
  filetypes = { "rust" },
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
  inlayHints = {
    enable = true,
  },
}

