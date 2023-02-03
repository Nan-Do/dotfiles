require("mason").setup()
require("mason-lspconfig").setup()

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

require'toggle_lsp_diagnostics'.init()

lsp.set_preferences({
  suggest_lsp_servers = false,
  set_lsp_keymaps = {omit = {'<F2>'}},
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {}),
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}),
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}),
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {}),
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {}),
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}),
})

require'lspconfig'.sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

