return {
  {
    "akinsho/flutter-tools.nvim",

    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("telescope").load_extension("flutter")
      require("flutter-tools").setup({
        fvm = true,
        ui = {
          border = "rounded",
          notification_style = "native",
        },
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
            updateImportsOnRename = true,
          },
        },
      })
    end,
  },
}
