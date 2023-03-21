return {
  -- Tables
  { "godlygeek/tabular" },
  -- Vimwike
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/Notes/problems/",
          syntax = "markdown",
          ext = ".md",
          custom_wiki2html = "~/bin/markdown_py2",
          nested_syntaxes = {
            ["python"] = "python",
            ["c++"] = "cpp",
          },
        },
      }
      vim.g.vimwiki_ext2syntax = {
        [".md"] = "markdown",
        [".markdown"] = "markdown",
        [".mdown"] = "markdown",
      }
      vim.g.vimwiki_conceal_pre = 1
      -- vim.g.vimwiki_folding = 'expr'
      vim.g.vimwiki_filetypes = { "markdown" }
    end,
  },
  -- Markdown
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
}
