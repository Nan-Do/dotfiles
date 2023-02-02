vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local options = { noremap = true }
vim.keymap.set("i", "jk", "<Esc>", options)
