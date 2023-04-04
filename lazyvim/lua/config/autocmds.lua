-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function(event)
    vim.keymap.set("n", "<leader>p", ":call mdip#MarkdownClipboardImage()<CR>", {
      buffer = event.buf,
      silent = true,
      desc = "Add an image stored in the Clipboard",
    })
  end,
})
