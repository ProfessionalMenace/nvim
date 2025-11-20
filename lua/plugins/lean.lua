return {{
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    mappings = false,

    lsp = {
      init_options = {
        editDelay = 0,
        hasWidgets = true,
      }
    },

    abbreviations = {
      enable = true,
      leader = '\\',
    },

    infoview = {
      autoopen = true,
      width = 50,
      height = 20,
      orientation = "auto",
      horizontal_position = "bottom",
      separate_tab = false,
      indicators = "auto",
    },

    progress_bars = {
      enable = true,
      character = '│',
      priority = 10,
    },

    stderr = {
      enable = true,
      height = 5,
      on_lines = nil,
    },
  }
}}
