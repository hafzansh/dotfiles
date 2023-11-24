return {
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        api_key_cmd = "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",
      })
    end,
  },
  {
    "max397574/colortils.nvim",
    cmd = "Colortils",
    config = function()
      require("colortils").setup()
    end,
  },
}
