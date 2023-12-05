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
        closing_tags = {
          highlight = "errormsg", -- highlight for the closing tag
          prefix = " ", -- character to use for close tag e.g. > widget
          enabled = true, -- set to false to disable
        },
        dev_log = { enabled = false, open_cmd = "belowright split" }, --tabedit
        lsp = {
          color = {
            enabled = true,
            background = true,
            virtual_text = false,
          },
          settings = {
            showtodos = true,
            completefunctioncalls = true,
            analysisexcludedfolders = { "~/.sdk/flutter/bin/" },
            renamefileswithclasses = "always", -- "always"
            enablesnippets = true,
            updateimportsonrename = true,
          },
        },
      })
    end,
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "sidlatau/neotest-dart",
    },
    opts = {
      adapters = {
        ["neotest-dart"] = {
          command = "flutter", -- command being used to run tests. defaults to `flutter`
          -- change it to `fvm flutter` if using fvm
          -- change it to `dart` for dart only tests
          use_lsp = true, -- when set flutter outline information is used when constructing test name.
          -- useful when using custom test names with @istest annotation
          custom_test_method_names = {},
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    opts = {},
    config = function(_, opts)
      local dap = require("dap")
      dap.adapters.dart = {
        type = "executable",
        command = vim.fn.stdpath("data") .. "/mason/bin/dart-debug-adapter",
        args = { "dart" },
      }
      dap.adapters.flutter = {
        type = "executable",
        command = vim.fn.stdpath("data") .. "/mason/bin/dart-debug-adapter",
        args = { "flutter" },
      }
      dap.configurations.dart = {
        {
          type = "dart",
          request = "launch",
          name = "Launch dart",
          dartSdkPath = os.getenv("DARTSDK"),
          flutterSdkPath = os.getenv("FLUTTERSDK"),
          program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
          cwd = "${workspaceFolder}",
        },
        {
          type = "flutter",
          request = "launch",
          name = "Launch flutter",
          dartSdkPath = os.getenv("DARTSDK"),
          flutterSdkPath = os.getenv("FLUTTERSDK"),
          program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
          cwd = "${workspaceFolder}",
        },
      }
    end,
  },
}
