-- vim.keymap.set("n", "<M-Down>", "o<esc>p", { desc = "Paste Below" })
-- vim.keymap.set("n", "<M-Up>", "O<esc>p", { desc = "Paste Above" })

vim.keymap.set("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n" }, "<C-S-A-Up>", "<CMD>LineDuplicate -1<CR>")
vim.keymap.set({ "n" }, "<C-S-A-Down>", "<CMD>LineDuplicate +1<CR>")

vim.keymap.set({ "v" }, "<C-S-A-Up>", "<CMD>LineDuplicate -1<CR>")
vim.keymap.set({ "v" }, "<C-S-A-Down>", "<CMD>LineDuplicate +1<CR>")

-- Harpoon
vim.keymap.set("n", "<leader>ha", "<CMD>lua require('harpoon.mark').add_file()<CR>", { desc = "Add harpoon mark" })
vim.keymap.set(
  "n",
  "<leader>hh",
  "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>",
  { desc = "Harpoon Quick Menu" }
)
vim.keymap.set("n", "<leader>hH", "<CMD>Telescope harpoon marks<CR>", { desc = "Harpoon Telescope Marks" })
