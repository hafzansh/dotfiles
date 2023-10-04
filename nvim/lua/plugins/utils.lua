return {

  {
    "rcarriga/nvim-dap-ui",
    lazy = true,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("dapui").setup()
    end,
  },
  {
    "echasnovski/mini.move",
    version = false,
    config = function()
      require("mini.move").setup()
    end,
  },
}
