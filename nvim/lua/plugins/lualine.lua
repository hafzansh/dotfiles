-- return {
--   "nvim-lualine/lualine.nvim",
--   optional = true,
--   event = "BufEnter",
--   opts = function(_, opts)
--     table.insert(opts.sections.lualine_x, 2, require("lazyvim.util").lualine.cmp_source("codeium"))
--   end,
-- }
return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "meuter/lualine-so-fancy.nvim",
    -- "SmiteshP/nvim-navic",
    -- "ThePrimeagen/harpoon",
  },
  config = function()
    local auto_theme_custom = require("lualine.themes.auto")
    auto_theme_custom.normal.c.bg = "none"
    local color_status = "#252535"
    require("lualine").setup({
      options = {
        theme = auto_theme_custom,
        component_separators = { left = "|", right = "│" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
        refresh = {
          statusline = 100,
        },
      },
      sections = {
        lualine_a = {
          { "fancy_mode", width = 1, separator = { left = "", right = "" }, right_padding = 1 },
          { "HarpoonNumberInactive" },
        },
        lualine_b = {
          { "fancy_branch" },
          { "fancy_diff" },
        },
        lualine_c = {
          --   { "fancy_cwd", substitute_home = true },
          -- nvim-navic
          -- {
          --   function()
          --     return require("nvim-navic").get_location()
          --   end,
          --   cond = function()
          --     return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
          --   end,
          -- },
        },
        lualine_x = {
          {
            function()
              return vim.g.flutter_tools_decorations.app_version
            end,
          },
          { "fancy_macro" },
          { "fancy_diagnostics" },
          { "fancy_searchcount" },
          { "fancy_location" },
        },
        lualine_y = {
          { "fancy_filetype", ts_icon = "" },
        },
        lualine_z = {
          { "fancy_lsp_servers" },
          {
            function()
              local status = vim.fn["codeium#GetStatusString"]()

              local color_default = "#252535"
              local color_error = "#f7768e"
              status = ""
              if status == " ON" then
                color_status = color_default
              else
                color_status = color_error
              end
              return status
            end,
            separator = { right = "" },
            color = { fg = color_status },
            left_padding = 1,
          },
        },

        --   lualine_a = { "filename" },
        --   lualine_b = {},
        --   lualine_c = {},
        --   lualine_x = {},
        --   lualine_y = {},
        --   lualine_z = {},
        -- },
        -- tabline = {
        --   lualine_a = {
        --     {
        --       "buffers",
        --       separator = { left = "", right = "" },
        --       right_padding = 2,
        --       left_padding = 2,
        --       symbols = { alternate_file = "" },
        --     },
        --   },
        --   lualine_b = {},
        --   lualine_c = {},
        --   lualine_x = {},
        --   lualine_y = {},
        --   lualine_z = {
        --     {
        --       "diagnostics",
        --       sources = { "nvim_diagnostic", "nvim_lsp" },
        --       sections = { "error", "warn", "info", "hint" },
        --       diagnostics_color = {
        --         error = "DiagnosticError", -- Changes diagnostics' error color.
        --         warn = "DiagnosticWarn", -- Changes diagnostics' warn color.
        --         info = "DiagnosticInfo", -- Changes diagnostics' info color.
        --         hint = "DiagnosticHint", -- Changes diagnostics' hint color.
        --       },
        --       symbols = { error = "E", warn = "W", info = "I", hint = "H" },
        --       colored = true, -- Displays diagnostics status in color if set to true.
        --       update_in_insert = false, -- Update diagnostics in insert mode.
        --       always_visible = false, -- Show diagnostics even if there are none.
        --     },
        --   },
      },
    })
  end,
  opts = {
    options = {
      theme = "auto",
    },
  },
}
