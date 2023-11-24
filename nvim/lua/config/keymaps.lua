-- vim.keymap.set("n", "<M-Down>", "o<esc>p", { desc = "Paste Below" })
-- vim.keymap.set("n", "<M-Up>", "O<esc>p", { desc = "Paste Above" })

-- vim.keymap.set("n", "<C-Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
--
-- vim.keymap.set("n", "<C-S-tab>", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
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

vim.api.nvim_create_autocmd("FileType", {
  pattern = "dart",
  callback = function()
    vim.keymap.set("n", "<leader>mo", "<CMD>FlutterOutlineToggle<CR>", { desc = "Toggle Flutter Outline" })
    vim.keymap.set("n", "<leader>mq", "<CMD>FlutterQuit<CR>", { desc = "Quit Flutter" })
    vim.keymap.set("n", "<leader>mg", "<CMD>FlutterPubGet<CR>", { desc = "Pub Get" })
    vim.keymap.set("n", "<leader>mc", "<CMD>FlutterLogClear<CR>", { desc = "Clear Log" })
    vim.keymap.set("n", "<leader>md", "<CMD>FlutterDevices<CR>", { desc = "Devices" })
    vim.keymap.set("n", "<leader>mD", "<CMD>FlutterDetach<CR>", { desc = "Detach" })
    vim.keymap.set("n", "<leader>mr", "<CMD>FlutterReload<CR>", { desc = "Reload" })
    vim.keymap.set("n", "<leader>mR", "<CMD>FlutterRestart<CR>", { desc = "Restart" })
    vim.keymap.set("n", "<leader>mG", "<CMD>FlutterRun<CR>", { desc = "Run" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "php", "blade" },
  callback = function()
    vim.keymap.set("n", "<leader>la", ":Laravel artisan<cr>")
    vim.keymap.set("n", "<leader>lr", ":Laravel routes<cr>")
    vim.keymap.set("n", "<leader>lm", ":Laravel related<cr>")
    vim.keymap.set("v", "<leader>lt", function()
      require("laravel.tinker").send_to_tinker()
    end, { desc = "Laravel Application Routes" })
  end,
})

--forward backward word ignoring punctuation
local pattern = [[\v['"({[< ]@<=(\w)|^(\w)|(['"\>)}]\.)@<=(\w)|(['"])@<=([][(){}.,;])(['"])]]
vim.keymap.set({ "n", "v" }, "<M-w>", function()
  vim.fn.search(pattern)
end)
vim.keymap.set({ "n", "v" }, "<M-b>", function()
  --(word) backwards
  vim.fn.search(pattern, "b")
end)

vim.keymap.set({ "n", "v", "i" }, "<M-q>", function()
  print(vim.fn.exists("b:_codeium_completions"))
end)
-- vim.api.nvim_set_keymap("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
--
-- -- Redo last selected option
-- vim.api.nvim_set_keymap(
--   "n",
--   "<S-F6>",
--   "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
--     .. "<cmd>CompilerRedo<cr>",
--   { noremap = true, silent = true }
-- )
--
-- -- Toggle compiler results
-- vim.api.nvim_set_keymap("n", "<F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
