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
    local function trunc(trunc_width, trunc_len, hide_width, no_ellipsis)
      return function(str)
        local win_width = vim.fn.winwidth(0)
        if hide_width and win_width < hide_width then
          return ""
        elseif trunc_width and trunc_len and win_width < trunc_width and #str > trunc_len then
          return str:sub(1, trunc_len) .. (no_ellipsis and "" or "...")
        end
        return str
      end
    end
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
      },
    })
  end,
  opts = {
    options = {
      theme = "auto",
    },
  },
}
