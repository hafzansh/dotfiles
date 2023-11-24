return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",

    -- optional
    "nvim-tree/nvim-web-devicons",

    -- recommended
    -- "rcarriga/nvim-notify",
  },
  opts = {
    -- configuration goes here
    lang = "typescript",
  },
  config = function(_, opts)
    vim.keymap.set("n", "<leader>kq", "<cmd>LcQuestionTabs<cr>")
    vim.keymap.set("n", "<leader>km", "<cmd>LcMenu<cr>")
    vim.keymap.set("n", "<leader>kc", "<cmd>LcConsole<cr>")
    vim.keymap.set("n", "<leader>kl", "<cmd>LcLanguage<cr>")
    vim.keymap.set("n", "<leader>kd", "<cmd>LcDescriptionToggle<cr>")
    require("leetcode").setup(opts)
  end,
}
