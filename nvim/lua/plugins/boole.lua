return {
  "nat-418/boole.nvim",
  config = function()
    require("boole").setup({
      mappings = {
        increment = "<M-a>",
        decrement = "<M-x>",
      },
    })
  end,
}
