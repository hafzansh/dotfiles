return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      debugger = {
        enabled = true,
        run_via_dap = true,
      },
      outline = { auto_open = false },
      decorations = {
        statusline = { device = true, app_version = true },
      },
      -- flutter_lookup_cmd = "dirname $(which flutter)",
      widget_guides = { enabled = true, debug = true },
      dev_log = { enabled = true, open_cmd = "tabedit" },
      lsp = {
        color = {
          enabled = true,
          background = true,
          virtual_text = false,
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          analysisExcludedFolders = { "/snap/bin/flutter/" },
          renameFilesWithClasses = "prompt", -- "always"
          enableSnippets = true,
        },
      },
    })
  end,
}
