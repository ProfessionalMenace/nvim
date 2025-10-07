return {
  {
    'chomosuke/typst-preview.nvim',
    lazy = false,
    version = '1.*',
    opts = {
      debug = false,

      -- Custom format string to open the output link provided with %s
      open_cmd = 'firefox %s -P typst-preview --class typst-preview',
      port = 0,
      invert_colors = 'never',
      follow_cursor = false,

     dependencies_bin = {
        ['tinymist'] = 'tinymist',
        ['websocat'] = nil
      },

      extra_args = { "--input=ver=draft" },

      -- This function will be called to determine the root of the typst project
      get_root = function(path_of_main_file)
        local root = os.getenv 'TYPST_ROOT'
        if root then
          return root
        end
        return vim.fn.fnamemodify(path_of_main_file, ':p:h')
      end,

      -- This function will be called to determine the main file of the typst project
      get_main_file = function(path_of_buffer)
        return path_of_buffer
      end,
    }
  }
}
