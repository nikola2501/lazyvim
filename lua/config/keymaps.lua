-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fff", "<cmd>FzfLua files<cr>", { desc = "fzf files" })
-- vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set("n", "<leader>ffw", "<cmd>FzfLua grep<cr>", { desc = "fzf grep" })
vim.keymap.set("n", "<leader>ffc", "<cmd>FzfLua grep_cword<cr>", { desc = "fzf grep current word" })
vim.keymap.set("n", "<leader>ffs", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "fzf doc symbols" })
vim.keymap.set("n", "<leader>ffx", "<cmd>FzfLua lsp_live_workspace_symbols<cr>", { desc = "fzf workspace symbols" })
vim.keymap.set("n", "<leader>ffa", "<cmd>FzfLua git_status<cr>", { desc = "fzf git status" })
vim.keymap.set("n", "<leader>ffi", "<cmd>FzfLua lsp_implementations<cr>", { desc = "fzf lsp implementations" })
