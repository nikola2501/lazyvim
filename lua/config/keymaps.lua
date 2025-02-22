-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Fzf
vim.keymap.set("n", "<leader>zf", "<cmd>FzfLua files<cr>", { desc = "fzf files" })
-- vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set("n", "<leader>zw", "<cmd>FzfLua grep<cr>", { desc = "fzf grep" })
vim.keymap.set("n", "<leader>zc", "<cmd>FzfLua grep_cword<cr>", { desc = "fzf grep current word" })
vim.keymap.set("n", "<leader>zs", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "fzf doc symbols" })
vim.keymap.set("n", "<leader>zx", "<cmd>FzfLua lsp_live_workspace_symbols<cr>", { desc = "fzf workspace symbols" })
vim.keymap.set("n", "<leader>za", "<cmd>FzfLua git_status<cr>", { desc = "fzf git status" })
vim.keymap.set("n", "<leader>zi", "<cmd>FzfLua lsp_implementations<cr>", { desc = "fzf lsp implementations" })

-- lsp
vim.keymap.set("n", "<leader>r", vim.diagnostic.open_float, { desc = "Open diagnostics" })

-- gitsigns
vim.keymap.set("n", "<leader>gb", function()
  require("gitsigns").blame_line({ full = true })
end, { desc = "Blame line" })
vim.keymap.set("n", "<leader>gi", function()
  require("gitsigns").blame()
end, { desc = "Blame" })

-- Compile mode
-- vim.keymap.set('n', '<leader>cc', '<cmd>Compile<cr>', { desc = 'Compile' })
vim.keymap.set("n", "<leader>cd", function()
  vim.api.nvim_feedkeys(":Compile ", "n", false)
end, { desc = "Open command line with ':Compile '" })

-- ctrl+c comment line
vim.keymap.set("n", "<C-c>", "gcc", { remap = true, desc = "Toggle comment (maps to gcc)" })
vim.keymap.set("v", "<C-c>", "gc", { remap = true, desc = "Toggle comment (maps to gc)" })
