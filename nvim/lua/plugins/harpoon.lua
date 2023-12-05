return {
  "ThePrimeagen/harpoon",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").load_extension("harpoon")
    require("harpoon").setup({})
  end,
}
