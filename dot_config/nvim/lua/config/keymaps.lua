-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")
vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>")

vim.keymap.set({ "n", "v" }, "<leader>p", '"*p', { desc = "Paste from system clipboard" })
