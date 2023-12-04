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
    enabled = true,
    opts = {
      options = {
        separator_style = { "", "" },
        indicator = {
          icon = "> ",
          style = "none",
        },
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
  {
    "rest-nvim/rest.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("rest-nvim").setup({
        --- Get the same options from Packer setup
      })
    end,
  },
}
