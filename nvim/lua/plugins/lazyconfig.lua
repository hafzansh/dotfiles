return {
  -- Better `vim.notify()`
  {
    "rcarriga/nvim-notify",
    opts = {

      background_colour = "#000000",
      top_down = false,
      render = "compact",
      timeout = 1500,
    },
  },
  -- Treesitter-blade config
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      config = function()
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

        parser_config.blade = {
          install_info = {
            url = "https://github.com/EmranMR/tree-sitter-blade",
            files = { "src/parser.c" },
            branch = "main",
          },
          filetype = "blade",
        }

        vim.filetype.add({
          pattern = {
            [".*%.blade%.php"] = "blade",
          },
        })
      end,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "vendor",
        },
      },
    },
  },
}
