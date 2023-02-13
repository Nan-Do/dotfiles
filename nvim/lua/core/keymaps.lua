vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local options = { noremap = true }
vim.keymap.set("i", "jk", "<Esc>", options)

vim.keymap.set("n",
               "<leader>p",
               ":lua require(\"nabla\").popup()<CR>",
               options)
