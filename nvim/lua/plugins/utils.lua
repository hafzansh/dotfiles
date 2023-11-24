return {

  {
    "echasnovski/mini.move",
    version = false,
    config = function()
      require("mini.move").setup()
    end,
  },
  {
    "hinell/duplicate.nvim",
  },
  {
    "mg979/vim-visual-multi",
  },
  {
    "karb94/neoscroll.nvim",
    enabled = false,
    config = function()
      require("neoscroll").setup({})
    end,
  },
  {
    "folke/neodev.nvim",
    opts = {},
    config = function()
      require("neodev").setup({
        library = { plugins = { "neotest" }, types = true },
      })
    end,
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {

    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "thin",

        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
      },
    },
  },
  {
    "vimpostor/vim-tpipeline",
    enabled = false,
  },
}
